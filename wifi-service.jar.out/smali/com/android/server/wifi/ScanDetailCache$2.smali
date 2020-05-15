.class Lcom/android/server/wifi/ScanDetailCache$2;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScanDetailCache;->sort()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScanDetailCache;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScanDetailCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/ScanDetailCache;

    .line 147
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache$2;->this$0:Lcom/android/server/wifi/ScanDetailCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 149
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 150
    .local v0, "a":Landroid/net/wifi/ScanResult;
    move-object v1, p2

    check-cast v1, Lcom/android/server/wifi/ScanDetail;

    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 151
    .local v1, "b":Landroid/net/wifi/ScanResult;
    iget-wide v2, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v2, v2, v4

    const/4 v3, -0x1

    if-lez v2, :cond_0

    .line 152
    return v3

    .line 154
    :cond_0
    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v6, v1, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v2, v4, v6

    const/4 v4, 0x1

    if-gez v2, :cond_1

    .line 155
    return v4

    .line 157
    :cond_1
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v5, v1, Landroid/net/wifi/ScanResult;->level:I

    if-le v2, v5, :cond_2

    .line 158
    return v3

    .line 160
    :cond_2
    iget v2, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    if-ge v2, v3, :cond_3

    .line 161
    return v4

    .line 163
    :cond_3
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method
