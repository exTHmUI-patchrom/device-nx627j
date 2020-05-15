.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiLastResortWatchdog$mIpWfGvGcRn_UMBeTeYZKeAS5FM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiLastResortWatchdog;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiLastResortWatchdog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiLastResortWatchdog$mIpWfGvGcRn_UMBeTeYZKeAS5FM;->f$0:Lcom/android/server/wifi/WifiLastResortWatchdog;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiLastResortWatchdog$mIpWfGvGcRn_UMBeTeYZKeAS5FM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiLastResortWatchdog$mIpWfGvGcRn_UMBeTeYZKeAS5FM;->f$0:Lcom/android/server/wifi/WifiLastResortWatchdog;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiLastResortWatchdog$mIpWfGvGcRn_UMBeTeYZKeAS5FM;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiLastResortWatchdog;->lambda$takeBugReportWithCurrentProbability$0(Lcom/android/server/wifi/WifiLastResortWatchdog;Ljava/lang/String;)V

    return-void
.end method
