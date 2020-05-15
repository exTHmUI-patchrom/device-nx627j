.class Landroid/location/LocationManager$ListenerTransport;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1

.field private static final TYPE_PROVIDER_DISABLED:I = 0x4

.field private static final TYPE_PROVIDER_ENABLED:I = 0x3

.field private static final TYPE_STATUS_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 309
    iput-object p1, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 310
    iput-object p2, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 312
    if-nez p3, :cond_0

    .line 313
    new-instance v0, Landroid/location/LocationManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationManager$ListenerTransport$1;-><init>(Landroid/location/LocationManager$ListenerTransport;Landroid/location/LocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0

    .line 320
    :cond_0
    new-instance v0, Landroid/location/LocationManager$ListenerTransport$2;

    invoke-direct {v0, p0, p3, p1}, Landroid/location/LocationManager$ListenerTransport$2;-><init>(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Looper;Landroid/location/LocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 327
    :goto_0
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 368
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 387
    :pswitch_0
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :pswitch_1
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 385
    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 378
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "provider":Ljava/lang/String;
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 380
    .local v2, "status":I
    const-string v3, "extras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 381
    .local v3, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v4, v1, v2, v3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 382
    goto :goto_0

    .line 371
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "provider":Ljava/lang/String;
    .end local v2    # "status":I
    .end local v3    # "extras":Landroid/os/Bundle;
    :pswitch_3
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    const-string/jumbo v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/location/LocationManager;->access$100(Landroid/location/LocationManager;Ljava/lang/String;)V

    .line 373
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 374
    .local v0, "location":Landroid/location/Location;
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v1, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 375
    nop

    .line 391
    .end local v0    # "location":Landroid/location/Location;
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v0}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/location/ILocationManager;->locationCallbackFinished(Landroid/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    nop

    .line 395
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/location/LocationManager$ListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .line 300
    invoke-direct {p0, p1}, Landroid/location/LocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 331
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 333
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 361
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 362
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 363
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 353
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 355
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 339
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 340
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 341
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "provider"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    if-eqz p3, :cond_0

    .line 345
    const-string v2, "extras"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 347
    :cond_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    iget-object v2, p0, Landroid/location/LocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void
.end method
