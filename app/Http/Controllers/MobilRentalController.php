<?php

namespace App\Http\Controllers;

use App\Sub_Rental_Paket;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Sub_Rental_Mobil;
use App\Sub_Rental_Sopir;
use App\Sub_Rental;
use App\Upload;

class MobilRentalController extends Controller
{
    public function getMobil()
    {
        $lokasi = $_POST['lokasi'];
        $tanggal = $_POST['tanggal'];
        $jam = $_POST['jam'];
        $durasi = $_POST['durasi'];
        $jumlah = $_POST['jumlah'];
        return '{ "lokasi": "'.$lokasi.'", "tanggal": "'.$tanggal.'", "jam": "'.$jam.'", "durasi": "'.$durasi.'", "jumlah": "'.$jumlah.'" }';
    }
    public function hitung(){
        $price = $_GET['price'];
        $durasi = $_GET['durasi'];
        $gettanggal = $_GET['tanggal'];
        $tanggal = explode('-',$gettanggal);
        $getjam = $_GET['jam'];
        $jam = explode(':', $getjam);
        $orderTime = Carbon::create($tanggal[0],$tanggal[1],$tanggal[2],$jam[0],$jam[1]);
        $orderFinish = Carbon::create($tanggal[0],$tanggal[1],$tanggal[2],$jam[0],$jam[1]);
        $orderFinish->addDays($durasi);
        $total = $price + 7500;
        return '{"orderTime":"'.$orderTime->format('l\\, j F Y h:i').'", "orderFinish":"'.$orderFinish->format('l\\, j F Y h:i').'", "total":"'.$total.'"}';
    }

    public function listMobil()
    {
        $status = true;
        if (isset($_GET['lokasi'])) {
            $lokasi = $_GET['lokasi'];
        } else { $status = false; }

        if (isset($_GET['tanggal']) && isset($_GET['jam']) && isset($_GET['durasi'])) {
            $durasi = $_GET['durasi'];
            $gettanggal = $_GET['tanggal'];
            $tanggal = explode('-',$gettanggal);
            $getjam = $_GET['jam'];
            $jam = explode(':', $getjam);
            $orderTime = Carbon::create($tanggal[0],$tanggal[1],$tanggal[2],$jam[0],$jam[1],'00');
            $orderFinish = Carbon::create($tanggal[0],$tanggal[1],$tanggal[2],$jam[0],$jam[1],'00');
            $orderFinish->addDays($durasi);
        } else { $status = false; }

        if (isset($_GET['jumlah'])) {
            $jumlah = $_GET['jumlah'];
        } else { $status = false; }

        if($status == true){
            $sub_rental_mobil = Sub_Rental_Mobil::isReadyCity($lokasi, $jumlah);
            if ($sub_rental_mobil->count() == 0){
                return '[]';
            } else {
                return $sub_rental_mobil;
            }
        } else {
            return '[]';
        }

    }
    public function detailMobil($id)
    {
        $result = Sub_Rental_Mobil::find($id);
        $subrental = Sub_Rental::find($result->owner)->rentalName;
        $imageName = Upload::find($result->image)->name;
        $imageDate = Upload::find($result->image)->created_at;
        $tgl = explode(' ', $imageDate);
        $jam = explode(':',$tgl[1]);
        $image = $tgl[0].'-'.$jam[0].$jam[1].$jam[2].'-'.$imageName;

        $txt = '[{
        "id":' . $result->id . ',
        "nameCars":"' . $result->nameCars . '",
        "carsClass":"'.$result->carsClass.'",
        "years":"'.$result->years.'",
        "description":"'.$result->description.'",
        "rentalName":"' . $subrental . '",
        "capacity":' . $result->capacity . ',
        "price":' . $result->price . ',
        "image":"' . $image.'",
        "fasilitas":' . $result->fasilitas . '
        }]';

        return $txt;
    }
    public function pesanMobil(){

    }
    //===================================================================================================================================
    public function listSopir()
    {
        $sub_rental_sopir = Sub_Rental_Sopir::isReady();
        return $sub_rental_sopir;

    }
    public function detailSopir($id){
        $result = Sub_Rental_Sopir::find($id);
        $subrental = Sub_Rental::find($result->subRental)->rentalName;
        $imageName = Upload::find($result->foto)->name;
        $imageDate = Upload::find($result->foto)->created_at;
        $tgl = explode(' ', $imageDate);
        $jam = explode(':',$tgl[1]);
        $image = $tgl[0].'-'.$jam[0].$jam[1].$jam[2].'-'.$imageName;

        $txt = '[{
        "id":'.$result->id.',
        "namaSupir":"'.$result->namaSupir.'",
        "address":"'.$result->address.'",
        "gender":"'.$result->gender.'",
        "price":'.$result->price.',
        "foto":"'.$image.'",
        "subRental":"'.$subrental.'",
        "fasilitas":'.$result->fasilitas.'
        }]';

        return $txt;
    }
    public function listPlusSopir()
    {
        $sub_rental_paket = Sub_Rental_Paket::isPlusSopir();
        return $sub_rental_paket;
    }
    public function detailPaket($id){
        $result = Sub_Rental_Paket::find($id);
        $mobil = Sub_Rental_Mobil::find($result->nameCars);
        $imageMobilName = Upload::find($mobil->image)->name;
        $imageMobilDate = Upload::find($mobil->image)->created_at;
        $mobiltgl = explode(' ', $imageMobilDate);
        $mobiljam = explode(':',$mobiltgl[1]);
        $imageMobil = $mobiltgl[0].'-'.$mobiljam[0].$mobiljam[1].$mobiljam[2].'-'.$imageMobilName;

        $sopir = Sub_Rental_Sopir::find($result->namaSopir);
        $imageSopirName = Upload::find($sopir->foto)->name;
        $imageSopirDate = Upload::find($sopir->foto)->created_at;
        $sopirtgl = explode(' ', $imageSopirDate);
        $sopirjam = explode(':',$sopirtgl[1]);
        $imageSopir = $sopirtgl[0].'-'.$sopirjam[0].$sopirjam[1].$sopirjam[2].'-'.$imageSopirName;

        $txt = '[{
        "id":'.$result->id.',
        "packName":"'.$result->packName.'",
        "jenisPaket":"'.$result->jenisPaket.'",
        "nameCars":"'.$mobil->nameCars.'",
        "imageMobil":"'.$imageMobil.'",
        "namaSopir":'.$sopir->namaSopir.',
        "imageSopir":"'.$imageSopir.'",
        "price":'.$result->price.'",
        "fasilitas":'.$result->fasilitas.'
         }]';

        return $txt;
    }
    public function listLengkap()
    {
        $sub_rental_paket = Sub_Rental_Paket::isLengkap();
        return $sub_rental_paket;
    }
}

