[#escape x as x?html]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>${message("admin.index.title")}</title>
<meta name="author" content="SHOP++ Team" />
<meta name="copyright" content="SHOP++" />
<link href="${base}/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/resources/admin/js/jquery.js"></script>
<script type="text/javascript" src="${base}/resources/admin/js/common.js"></script>
<style type="text/css">
.input .powered {
	font-size: 11px;
	text-align: right;
	color: #cccccc;
}
</style>
</head>
<body>
	<div class="breadcrumb">
		${message("admin.index.title")}
	</div>
	<table class="input">
		<tr>
			<th>
				${message("admin.index.systemName")}:
			</th>
			<td>
				比捷商城
			</td>
			<th>
				${message("admin.index.systemVersion")}:
			</th>
			<td>
				${systemVersion}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.official")}:
			</th>
			<td>
				<a href="https://www.bijietech.com" target="_blank">https://www.bijietech.com/</a>
			</td>
			<th>
				
			</th>
			<td>
				
			</td>
		</tr>
		<tr>
			<td colspan="4">
				&nbsp;
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.javaVersion")}:
			</th>
			<td>
				${javaVersion}
			</td>
			<th>
				${message("admin.index.javaHome")}:
			</th>
			<td>
				${javaHome}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.osName")}:
			</th>
			<td>
				${osName}
			</td>
			<th>
				${message("admin.index.osArch")}:
			</th>
			<td>
				${osArch}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.serverInfo")}:
			</th>
			<td>
				<span title="${serverInfo}">${abbreviate(serverInfo, 30, "...")}</span>
			</td>
			<th>
				${message("admin.index.servletVersion")}:
			</th>
			<td>
				${servletVersion}
			</td>
		</tr>
		<tr>
			<td colspan="4">
				&nbsp;
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.pendingReviewOrderCount")}:
			</th>
			<td>
				${pendingReviewOrderCount}
			</td>
			<th>
				${message("admin.index.pendingShipmentOrderCount")}:
			</th>
			<td>
				${pendingShipmentOrderCount}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.pendingReceiveOrderCount")}:
			</th>
			<td>
				${pendingReceiveOrderCount}
			</td>
			<th>
				${message("admin.index.pendingRefundsOrderCount")}:
			</th>
			<td>
				${pendingRefundsOrderCount}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.marketableProductCount")}:
			</th>
			<td>
				${marketableProductCount}
			</td>
			<th>
				${message("admin.index.notMarketableProductCount")}:
			</th>
			<td>
				${notMarketableProductCount}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.stockAlertProductCount")}:
			</th>
			<td>
				${stockAlertProductCount}
			</td>
			<th>
				${message("admin.index.outOfStockProductCount")}:
			</th>
			<td>
				${outOfStockProductCount}
			</td>
		</tr>
		<tr>
			<th>
				${message("admin.index.memberCount")}:
			</th>
			<td>
				${memberCount}
			</td>
			<th>
				${message("admin.index.unreadMessageCount")}:
			</th>
			<td>
				${unreadMessageCount}
			</td>
		</tr>
		<tr>
			<td class="powered" colspan="4" style="padding:0 60px 0 0;">
				系统由<a target="_blank" href="http://www.bijietech.com">比捷科技</a>提供
			</td>
		</tr>
	</table>
</body>
</html>
[/#escape]