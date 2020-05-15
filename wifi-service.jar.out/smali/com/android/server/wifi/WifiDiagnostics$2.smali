.class Lcom/android/server/wifi/WifiDiagnostics$2;
.super Ljava/lang/Object;
.source "WifiDiagnostics.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiDiagnostics;->fetchPacketFates()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/wifi/WifiNative$FateReport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiDiagnostics;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiDiagnostics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiDiagnostics;

    .line 672
    iput-object p1, p0, Lcom/android/server/wifi/WifiDiagnostics$2;->this$0:Lcom/android/server/wifi/WifiDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wifi/WifiNative$FateReport;Lcom/android/server/wifi/WifiNative$FateReport;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/wifi/WifiNative$FateReport;
    .param p2, "rhs"    # Lcom/android/server/wifi/WifiNative$FateReport;

    .line 675
    iget-wide v0, p1, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    iget-wide v2, p2, Lcom/android/server/wifi/WifiNative$FateReport;->mDriverTimestampUSec:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 672
    check-cast p1, Lcom/android/server/wifi/WifiNative$FateReport;

    check-cast p2, Lcom/android/server/wifi/WifiNative$FateReport;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiDiagnostics$2;->compare(Lcom/android/server/wifi/WifiNative$FateReport;Lcom/android/server/wifi/WifiNative$FateReport;)I

    move-result p1

    return p1
.end method
