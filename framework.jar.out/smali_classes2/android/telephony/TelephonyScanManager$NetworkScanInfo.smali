.class Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
.super Ljava/lang/Object;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkScanInfo"
.end annotation


# instance fields
.field private final mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mRequest:Landroid/telephony/NetworkScanRequest;


# direct methods
.method constructor <init>(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 0
    .param p1, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    .line 95
    iput-object p2, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mExecutor:Ljava/util/concurrent/Executor;

    .line 96
    iput-object p3, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 97
    return-void
.end method

.method static synthetic access$100(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 87
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 87
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
