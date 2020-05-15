.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyScanManager$1$X9SMshZoHjJ6SzCbmgVMwQip2Q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;


# direct methods
.method public synthetic constructor <init>(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$X9SMshZoHjJ6SzCbmgVMwQip2Q0;->f$0:I

    iput-object p2, p0, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$X9SMshZoHjJ6SzCbmgVMwQip2Q0;->f$1:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$X9SMshZoHjJ6SzCbmgVMwQip2Q0;->f$0:I

    iget-object v1, p0, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$X9SMshZoHjJ6SzCbmgVMwQip2Q0;->f$1:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyScanManager$1;->lambda$handleMessage$1(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    return-void
.end method
