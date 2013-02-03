<?php

use Nette\Http as Http;

class HomepagePresenter extends BasePresenter {

	/** @var Users */
    private $users;
	
	protected function startup() {
        parent::startup();
        $this->users = $this->context->users;
    }
    
    public function handleUsersJson() {
        $all_users = array();
        $all_users["aaData"] = $this->users->findAll()->orderBy('id')->fetchAll();
        $this->sendResponse(new Nette\Application\Responses\JsonResponse($all_users));
    }

	public function renderDefault() {
		$all_users = $this->users->findAll()->orderBy('id')->fetchAll();
		$this->template->all_users = $all_users;
	}

}