.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyScanManager$1$tGSpVQaVhc4GKIxjcECV-jCGYw4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$tGSpVQaVhc4GKIxjcECV-jCGYw4;->f$0:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyScanManager$1$tGSpVQaVhc4GKIxjcECV-jCGYw4;->f$0:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager$1;->lambda$handleMessage$2(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    return-void
.end method
