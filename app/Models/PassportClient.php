<?php
namespace App\Models;

use Laravel\Passport\Client;

class PassportClient extends Client{
    /**
     * Determine if the client should skip the authorization prompt.
     *
     * @return bool
    */
    public function skipsAuthorization()
    {
        // false: All Clients should stop for authorization
        return false;
    }
}
