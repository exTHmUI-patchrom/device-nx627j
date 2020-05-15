.class public Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;
.super Ljava/lang/Object;
.source "ScreenSwitchServiceFor627.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogController"
.end annotation


# instance fields
.field private mController:Lnubia/os/screenswitch/IScreenDialogController;

.field private mType:I

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Lnubia/os/screenswitch/IScreenDialogController;)Landroid/os/IBinder;
    .locals 1
    .param p0, "controller"    # Lnubia/os/screenswitch/IScreenDialogController;

    .line 1468
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnubia/os/screenswitch/IScreenDialogController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1464
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->binder(Lnubia/os/screenswitch/IScreenDialogController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Lnubia/os/screenswitch/IScreenDialogController;)Z
    .locals 2
    .param p1, "controller"    # Lnubia/os/screenswitch/IScreenDialogController;

    .line 1460
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->binder(Lnubia/os/screenswitch/IScreenDialogController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public noteSwitchScreenTo(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1550
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1551
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return-void

    .line 1555
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenDialogController;->noteSwitchScreenTo(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    goto :goto_0

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling noteSwitchScreenTo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postCloseDoubleFPAnim()V
    .locals 3

    .line 1526
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1527
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-void

    .line 1531
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0}, Lnubia/os/screenswitch/IScreenDialogController;->closeDoubleFPAnim()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    goto :goto_0

    .line 1532
    :catch_0
    move-exception v0

    .line 1533
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1535
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postDismissDialog(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1502
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1503
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return-void

    .line 1507
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lnubia/os/screenswitch/IScreenDialogController;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    goto :goto_0

    .line 1508
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postDismissDialog(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    .line 1490
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1491
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    return-void

    .line 1495
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0, p1, p2}, Lnubia/os/screenswitch/IScreenDialogController;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    goto :goto_0

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1499
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postDisplayDialog(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1477
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1478
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    return-void

    .line 1482
    :cond_0
    if-lez p1, :cond_1

    .line 1483
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenDialogController;->displayDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1484
    :catch_0
    move-exception v0

    .line 1485
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1486
    :cond_1
    :goto_0
    nop

    .line 1487
    :goto_1
    return-void
.end method

.method public postOpenHeadsUp()V
    .locals 3

    .line 1538
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1539
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    return-void

    .line 1543
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0}, Lnubia/os/screenswitch/IScreenDialogController;->openHeadsUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    goto :goto_0

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1547
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postShowDoubleFPAnim(Z)V
    .locals 3
    .param p1, "withDialog"    # Z

    .line 1514
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1515
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return-void

    .line 1519
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenDialogController;->showDoubleFPAnim(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    goto :goto_0

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1523
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setController(Lnubia/os/screenswitch/IScreenDialogController;)V
    .locals 1
    .param p1, "controller"    # Lnubia/os/screenswitch/IScreenDialogController;

    .line 1472
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    .line 1473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mVisible:Z

    .line 1474
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 1456
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mType:I

    .line 1457
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 1452
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->mVisible:Z

    .line 1453
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchServiceFor627$DialogController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
