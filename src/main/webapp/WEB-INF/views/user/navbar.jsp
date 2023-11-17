<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Topbar Start -->
	<div class="container-fluid">
		<div class="row bg-secondary py-1 px-xl-5">
			<div class="col-lg-6 d-none d-lg-block">
				<div class="d-inline-flex align-items-center h-100">
					<a class="text-body mr-3" href="">Information</a> <a
						class="text-body mr-3" href="">Contact</a> <a
						class="text-body mr-3" href="">Help</a> <a
						class="text-body mr-3" href="">FAQs</a>
				</div>
			</div>
			<div class="col-lg-6 text-center text-lg-right">
				<div class="d-inline-flex align-items-center">
					<div class="btn-group">
						<button type="button" class="btn btn-sm btn-light dropdown-toggle"
							data-toggle="dropdown">Language</button>
						<div class="dropdown-menu dropdown-menu-right">
							<button class="dropdown-item" type="button">Việt Nam</button>
							<button class="dropdown-item" type="button">English</button>
						</div>
					</div>
					<!-- <div class="btn-group mx-2">
                        <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">VI</button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <button class="dropdown-item" type="button">EN</button>
                        </div>
                    </div> -->
				</div>
				<div class="d-inline-flex align-items-center d-block d-lg-none">
					<a href="" class="btn px-0 ml-2"> <i
						class="fas fa-heart text-dark"></i> <span
						class="badge text-dark border border-dark rounded-circle"
						style="padding-bottom: 2px;">0</span>
					</a> <a href="/shop/cart" class="btn px-0 ml-2"> <i
						class="fas fa-shopping-cart text-dark"></i> <span
						class="badge text-dark border border-dark rounded-circle"
						style="padding-bottom: 2px;">0</span>
					</a>
				</div>
			</div>
		</div>
		<div
			class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
			<div class="col-lg-4">
				<a with=100% href="/index" class="text-decoration-none">  <span
					class="h1 text-uppercase text-primary bg-dark px-2">OpeSea</span> <span
					class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Shop</span>
				</a>
			</div>
			<div class="col-lg-6 col-6 text-left">
				<form action="">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Tìm kiếm">
						<div class="input-group-append">
							<button class="input-group-text bg-transparent text-primary">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-lg-2 col-6 text-right">
				<p class="m-0">Consulting Services</p>
				<h5 class="m-0">0999921112</h5>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->
	<div class="container-fluid bg-dark mb-30">
		<div class="row px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a
					class="btn d-flex align-items-center justify-content-between bg-primary w-100"
					data-toggle="collapse" href="#navbar-vertical"
					style="height: 65px; padding: 0 30px;">
					<h6 class="text-dark m-0">
						<i class="fa fa-bars mr-2"></i>PRODUCT PORTFOLIO
					</h6> <i class="fa fa-angle-down text-dark"></i>
				</a>
				<nav
					class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light"
					id="navbar-vertical"
					style="width: calc(100% - 30px); z-index: 999;">
					<div class="navbar-nav w-100">						
						<c:forEach var="item" items="${procate}">
							<a href="" class="nav-item nav-link">${item.group.name}</a>
						</c:forEach>						
					</div>
				</nav>
			</div>
			<div class="col-lg-9">
				<nav
					class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
					<a href="" class="text-decoration-none d-block d-lg-none"> <span
						class="h1 text-uppercase text-dark bg-light px-2">Multi</span> <span
						class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-between"
						id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0">
							<a href="/index" class="nav-item nav-link active">Home
								page</a> <a href="contact.html" class="nav-item nav-link">Art</a> <a
								href="contact.html" class="nav-item nav-link">Gaming</a>
								<a href="" class="nav-item nav-link">Memberships</a>
								<a href="" class="nav-item nav-link">PFPs</a>
								<a href="" class="nav-item nav-link">Photography</a>
								<a href="" class="nav-item nav-link">Music</a>
							<%-- 	<c:if test="${empty sessionScope.username}">
								
							</c:if> --%>
							<%-- 	<c:if test="${not empty sessionScope.username}">
								
							</c:if> --%>
							<security:authorize access="!isAuthenticated()">
								<div class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle"
										data-toggle="dropdown">Account <i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/login" class="dropdown-item">Log in</a> <a
											href="/register" class="dropdown-item">Register</a>
									</div>
								</div>
							</security:authorize>
							<security:authorize access="isAuthenticated()">
								<div class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle"
										data-toggle="dropdown">Account <i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/shop/profile/order" class="dropdown-item">Information</a> <a
											href="/logout" class="dropdown-item">Log out</a>
									</div>
								</div>
							</security:authorize>

							<security:authorize access="hasRole('ROLE_ADMIN')">  
 								<a href="/admin/index" class="nav-item nav-link">Manage</a>
							</security:authorize>
						</div>

						<div class="navbar-nav ml-auto py-0 d-none d-lg-block">
							<a href="/shop/profile/favorite" class="btn px-0"> <i
								class="fas fa-heart text-primary"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">${sessionScope.countFavorite} ${sessionScope.countFavorite==null?'0':''}</span>
							</a> <a href="/shop/cart" class="btn px-0 ml-3"> <i
								class="fas fa-shopping-cart text-primary"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">${sessionScope.countProduct} ${sessionScope.countProduct==null?'0':''}</span>
							</a>
							 <button onclick="connectWallet()">CONNECT</button>
                         <button onclick="mintNft()">MINT NFT</button>
                         <button onclick="mintNftPriv()">MINT NFT WITH PRIV KEY</button>
                         <button onclick="transferSol()">TRANSFER SOLANA</button>
                         <input type="file" id="fileInput" />
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->
	<script>

        //*========== [CONNECT WALLET] ===========
        let publicKey;

        //1: Auto connect
        (async () => {
            await window.phantom.solana.connect();
            publicKey = window.phantom.solana.publicKey.toBase58(); //[1,1,1,1]
            console.log(publicKey);
        })();


        //2: Manual connect
        const connectWallet = async () => {
            await window.phantom.solana.connect();

            publicKey = window.phantom.solana.publicKey.toBase58(); //[1,1,1,1]
            console.log(publicKey);
        }

        //========== [MINT NFT PUBLIC KEY] ==========
        const SHYFT_API_KEY = "3UbHfIsA60brYfQy";

        const toTransaction = (encodedTransaction) => solanaWeb3.Transaction.from(Uint8Array.from(atob(encodedTransaction), c => c.charCodeAt(0)));

        //https://api.shyft.to/sol/v1
        const mintNft = async () => {
            var myHeaders = new Headers();
            myHeaders.append("x-api-key", SHYFT_API_KEY);

            const fileInput = document.querySelector("#fileInput");

            var formdata = new FormData();
            formdata.append("network", "devnet");
            formdata.append("wallet", publicKey);
            formdata.append("name", "FPOLY NFT");
            formdata.append("symbol", "FPL");
            formdata.append("description", "FPL Token makes Web3 so easy!");
            formdata.append("attributes", '[{"trait_type":"dev power","value":"over 900"}]');
            formdata.append("external_url", "https://shyft.to");
            formdata.append("max_supply", "1");
            formdata.append("royalty", "5");
            formdata.append("file", fileInput.files[0]);
            formdata.append("data", fileInput.files[0]);
            formdata.append("receiver", publicKey);
            formdata.append('service_charge', `{ "receiver": "7TfMNSZ2UHznQBmKF3QJG7VpiF4kKR6Pc9UaFQVfy5zs",  "amount": 0.01}`);

            var requestOptions = {
                method: 'POST',
                headers: myHeaders,
                body: formdata,
                redirect: 'follow'
            };

            fetch("https://api.shyft.to/sol/v1/nft/create_detach", requestOptions)
                .then(async response => {
                    let res = await response.json();
                    let transaction = toTransaction(res.result.encoded_transaction);

                    const signedTransaction = await window.phantom.solana.signTransaction(transaction);
                    const connection = new solanaWeb3.Connection("https://api.devnet.solana.com");
                    const signature = await connection.sendRawTransaction(signedTransaction.serialize());

                    console.log("TRANSACTION CONFIRMED!!!");
                })
                .catch(error => console.log('error', error));
        }

        //MINT PRIV KEY
        const PRIV_KEY_WALLET = "4XMJ5M6wopsvVmBMC8jpShcVETUAAbF2aVKy4ZtqxXDmHUgDcywGhy817vVN2dwJqU6crhWpsoHVtcFAAPRtkGNc";
        const mintNftPriv = async () => {
            var myHeaders = new Headers();
            myHeaders.append("x-api-key", SHYFT_API_KEY);

            const fileInput = document.querySelector("#fileInput");

            var formdata = new FormData();
            formdata.append("network", "devnet");
            formdata.append("private_key", PRIV_KEY_WALLET);
            formdata.append("name", "FPOLY NFT");
            formdata.append("symbol", "FPL");
            formdata.append("description", "FPL Token makes Web3 so easy!");
            formdata.append("attributes", '[{"trait_type":"dev power","value":"over 900"}]');
            formdata.append("external_url", "https://shyft.to");
            formdata.append("max_supply", "1");
            formdata.append("royalty", "5");
            formdata.append("file", fileInput.files[0]);
            formdata.append("data", fileInput.files[0]);
            formdata.append("receiver", publicKey);
            formdata.append('service_charge', `{ "receiver": "7TfMNSZ2UHznQBmKF3QJG7VpiF4kKR6Pc9UaFQVfy5zs",  "amount": 0.01}`);

            var requestOptions = {
                method: 'POST',
                headers: myHeaders,
                body: formdata,
                redirect: 'follow'
            };

            fetch("https://api.shyft.to/sol/v1/nft/create", requestOptions)
                .then(async response => {
                    console.log("TRANSACTION CONFIRMED!!!");
                })
                .catch(error => console.log('error', error));
        }

        //=========== [TRANSFER SOLANA] ==========
        const transferSol = async () => {
            var myHeaders = new Headers();
            myHeaders.append("x-api-key", SHYFT_API_KEY);
            myHeaders.append("Content-Type", "application/json");

            var raw = JSON.stringify({
                "network": "devnet",
                "from_address": "EzFQnwAZQx9VUUBj9qvtfFftFgGyQrEd5SzBXb5pkETH", //Nguoi gui
                "to_address": "DdfPwgfuojvpufpgPrfuE47veP6CiD5hYRr2c7mAosuU", //Nguoi nhan
                "amount": 6,
            });

            var requestOptions = {
                method: 'POST',
                headers: myHeaders,
                body: raw,
                redirect: 'follow'
            };

            fetch("https://api.shyft.to/sol/v1/wallet/send_sol", requestOptions)
                .then(async response => {
                    let res = await response.json();
                    let transaction = toTransaction(res.result.encoded_transaction);

                    const signedTransaction = await window.phantom.solana.signTransaction(transaction);
                    const connection = new solanaWeb3.Connection("https://api.devnet.solana.com");
                    const signature = await connection.sendRawTransaction(signedTransaction.serialize());

                    console.log("TRANSFER SUCCESSFULLY!!!");
                })
                .then(result => console.log(result))
                .catch(error => console.log('error', error));
        }
    </script>
</body>
</html>