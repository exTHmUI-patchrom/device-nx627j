.class public Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
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

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Lnubia/os/screenswitch/IScreenDialogController;)Landroid/os/IBinder;
    .locals 1
    .param p0, "controller"    # Lnubia/os/screenswitch/IScreenDialogController;

    .line 1212
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

    .line 1208
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-static {v0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->binder(Lnubia/os/screenswitch/IScreenDialogController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Lnubia/os/screenswitch/IScreenDialogController;)Z
    .locals 2
    .param p1, "controller"    # Lnubia/os/screenswitch/IScreenDialogController;

    .line 1204
    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->binder(Lnubia/os/screenswitch/IScreenDialogController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public postCloseDoubleFPAnim()V
    .locals 3

    .line 1270
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1271
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    return-void

    .line 1275
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0}, Lnubia/os/screenswitch/IScreenDialogController;->closeDoubleFPAnim()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    goto :goto_0

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postDismissDialog(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1246
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1247
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    return-void

    .line 1251
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lnubia/os/screenswitch/IScreenDialogController;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1255
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postDismissDialog(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    .line 1234
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1235
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    return-void

    .line 1239
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0, p1, p2}, Lnubia/os/screenswitch/IScreenDialogController;->dismiss(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    goto :goto_0

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1243
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postDisplayDialog(I)V
    .locals 3
    .param p1, "type"    # I

    .line 1221
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1222
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return-void

    .line 1226
    :cond_0
    if-lez p1, :cond_1

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenDialogController;->displayDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1230
    :cond_1
    :goto_0
    nop

    .line 1231
    :goto_1
    return-void
.end method

.method public postOpenHeadsUp()V
    .locals 3

    .line 1282
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1283
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    return-void

    .line 1287
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0}, Lnubia/os/screenswitch/IScreenDialogController;->openHeadsUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    goto :goto_0

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postShowDoubleFPAnim(Z)V
    .locals 3
    .param p1, "withDialog"    # Z

    .line 1258
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    if-nez v0, :cond_0

    .line 1259
    const-string v0, "ScreenSwitchService"

    const-string v1, "DialogController has not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-void

    .line 1263
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    invoke-interface {v0, p1}, Lnubia/os/screenswitch/IScreenDialogController;->showDoubleFPAnim(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1266
    goto :goto_0

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenSwitchService"

    const-string v2, "Error calling displayDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1267
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setController(Lnubia/os/screenswitch/IScreenDialogController;)V
    .locals 1
    .param p1, "controller"    # Lnubia/os/screenswitch/IScreenDialogController;

    .line 1216
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mController:Lnubia/os/screenswitch/IScreenDialogController;

    .line 1217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mVisible:Z

    .line 1218
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 1200
    iput p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mType:I

    .line 1201
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 1196
    iput-boolean p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->mVisible:Z

    .line 1197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/nubia/server/screenswitch/ScreenSwitchService$DialogController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
