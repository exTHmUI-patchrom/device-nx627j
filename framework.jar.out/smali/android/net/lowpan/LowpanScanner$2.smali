.class Landroid/net/lowpan/LowpanScanner$2;
.super Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanScanner;->startEnergyScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanScanner;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanScanner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanScanner;

    .line 257
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onEnergyScanFinished$1(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 0
    .param p0, "callback"    # Landroid/net/lowpan/LowpanScanner$Callback;

    .line 292
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanScanner$Callback;->onScanFinished()V

    return-void
.end method

.method static synthetic lambda$onEnergyScanResult$0(Landroid/net/lowpan/LowpanScanner$Callback;II)V
    .locals 1
    .param p0, "callback"    # Landroid/net/lowpan/LowpanScanner$Callback;
    .param p1, "channel"    # I
    .param p2, "rssi"    # I

    .line 268
    if-eqz p0, :cond_0

    .line 269
    new-instance v0, Landroid/net/lowpan/LowpanEnergyScanResult;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanEnergyScanResult;-><init>()V

    .line 271
    .local v0, "result":Landroid/net/lowpan/LowpanEnergyScanResult;
    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanEnergyScanResult;->setChannel(I)V

    .line 272
    invoke-virtual {v0, p2}, Landroid/net/lowpan/LowpanEnergyScanResult;->setMaxRssi(I)V

    .line 273
    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanScanner$Callback;->onEnergyScanResult(Landroid/net/lowpan/LowpanEnergyScanResult;)V

    .line 275
    .end local v0    # "result":Landroid/net/lowpan/LowpanEnergyScanResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public onEnergyScanFinished()V
    .locals 3

    .line 285
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v0}, Landroid/net/lowpan/LowpanScanner;->access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    .line 286
    .local v0, "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v1

    .line 288
    .local v1, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    new-instance v2, Landroid/net/lowpan/-$$Lambda$LowpanScanner$2$n8MSb22N9MEsazioSumvyQhW3Z4;

    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-direct {v2, v0}, Landroid/net/lowpan/-$$Lambda$LowpanScanner$2$n8MSb22N9MEsazioSumvyQhW3Z4;-><init>(Landroid/net/lowpan/LowpanScanner$Callback;)V

    .line 294
    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 297
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 299
    :goto_0
    return-void
.end method

.method public onEnergyScanResult(II)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "rssi"    # I

    .line 259
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v0}, Landroid/net/lowpan/LowpanScanner;->access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    .line 260
    .local v0, "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v1

    .line 262
    .local v1, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 263
    return-void

    .line 266
    :cond_0
    new-instance v2, Landroid/net/lowpan/-$$Lambda$LowpanScanner$2$GBDCgjndr24KQueHMX2qGNtfLPg;

    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-direct {v2, v0, p1, p2}, Landroid/net/lowpan/-$$Lambda$LowpanScanner$2$GBDCgjndr24KQueHMX2qGNtfLPg;-><init>(Landroid/net/lowpan/LowpanScanner$Callback;II)V

    .line 277
    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 280
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 282
    :goto_0
    return-void
.end method
