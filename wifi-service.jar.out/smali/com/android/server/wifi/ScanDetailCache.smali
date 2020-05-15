.class public Lcom/android/server/wifi/ScanDetailCache;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ScanDetailCache"


# instance fields
.field private final mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSize:I

.field private final mTrimSize:I


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiConfiguration;II)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "maxSize"    # I
    .param p3, "trimSize"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 55
    iput p2, p0, Lcom/android/server/wifi/ScanDetailCache;->mMaxSize:I

    .line 56
    iput p3, p0, Lcom/android/server/wifi/ScanDetailCache;->mTrimSize:I

    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method private sort()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Lcom/android/server/wifi/ScanDetailCache$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/ScanDetailCache$2;-><init>(Lcom/android/server/wifi/ScanDetailCache;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    :cond_0
    return-object v0
.end method

.method private trim()V
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 116
    .local v0, "currentSize":I
    iget v1, p0, Lcom/android/server/wifi/ScanDetailCache;->mTrimSize:I

    if-ge v0, v1, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    new-instance v2, Lcom/android/server/wifi/ScanDetailCache$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/ScanDetailCache$1;-><init>(Lcom/android/server/wifi/ScanDetailCache;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/wifi/ScanDetailCache;->mTrimSize:I

    sub-int v3, v0, v3

    if-ge v2, v3, :cond_2

    .line 138
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .line 139
    .local v3, "result":Lcom/android/server/wifi/ScanDetail;
    iget-object v4, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v3    # "result":Lcom/android/server/wifi/ScanDetail;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    return-object v0
.end method

.method public getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v0

    .line 77
    .local v0, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method isEmpty()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method keySet()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method put(Lcom/android/server/wifi/ScanDetail;)V
    .locals 2
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/ScanDetailCache;->mMaxSize:I

    if-lt v0, v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/server/wifi/ScanDetailCache;->trim()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method size()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 34

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "Scan Cache:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/ScanDetailCache;->sort()Ljava/util/ArrayList;

    move-result-object v2

    .line 176
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 177
    .local v3, "now_ms":J
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 178
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/ScanDetail;

    .line 179
    .local v6, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 180
    .local v7, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v8

    sub-long v8, v3, v8

    .line 181
    .local v8, "milli":J
    const-wide/16 v10, 0x0

    .line 182
    .local v10, "ageSec":J
    const-wide/16 v12, 0x0

    .line 183
    .local v12, "ageMin":J
    const-wide/16 v14, 0x0

    .line 184
    .local v14, "ageHour":J
    const-wide/16 v16, 0x0

    .line 185
    .local v16, "ageMilli":J
    const-wide/16 v18, 0x0

    .line 186
    .local v18, "ageDay":J
    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v20

    cmp-long v20, v3, v20

    const-wide/16 v21, 0x0

    if-lez v20, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v23

    cmp-long v20, v23, v21

    if-lez v20, :cond_0

    .line 187
    const-wide/16 v23, 0x3e8

    rem-long v16, v8, v23

    .line 188
    div-long v23, v8, v23

    const-wide/16 v25, 0x3c

    rem-long v10, v23, v25

    .line 189
    const-wide/32 v23, 0xea60

    div-long v23, v8, v23

    rem-long v12, v23, v25

    .line 190
    const-wide/32 v23, 0x36ee80

    div-long v23, v8, v23

    const-wide/16 v25, 0x18

    rem-long v14, v23, v25

    .line 191
    const-wide/32 v23, 0x5265c00

    div-long v18, v8, v23

    .line 193
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .end local v16    # "ageMilli":J
    .end local v18    # "ageDay":J
    .local v1, "ageHour":J
    .local v3, "ageMin":J
    .local v12, "ageMilli":J
    .local v14, "ageDay":J
    .local v27, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .local v28, "now_ms":J
    :cond_0
    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    move-wide v3, v12

    move-wide v1, v14

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    move-object/from16 v30, v5

    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%3d"

    move-object/from16 v31, v6

    const/4 v6, 0x1

    .end local v6    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .local v31, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-wide/from16 v32, v8

    new-array v8, v6, [Ljava/lang/Object;

    .end local v8    # "milli":J
    .local v32, "milli":J
    iget v9, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v16, 0x0

    aput-object v9, v8, v16

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    cmp-long v5, v10, v21

    if-gtz v5, :cond_1

    cmp-long v5, v12, v21

    if-lez v5, :cond_2

    .line 196
    :cond_1
    const-string v5, ",%4d.%02d.%02d.%02d.%03dms"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v16

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    .line 196
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_2
    const-string v5, "} "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .end local v1    # "ageHour":J
    .end local v3    # "ageMin":J
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    .end local v10    # "ageSec":J
    .end local v12    # "ageMilli":J
    .end local v14    # "ageDay":J
    .end local v31    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v32    # "milli":J
    nop

    .line 178
    move-object/from16 v2, v27

    move-wide/from16 v3, v28

    move-object/from16 v5, v30

    const/16 v1, 0xa

    goto/16 :goto_0

    .line 201
    .end local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .end local v28    # "now_ms":J
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .local v3, "now_ms":J
    :cond_3
    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .end local v3    # "now_ms":J
    .restart local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .restart local v28    # "now_ms":J
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 204
    .end local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .end local v28    # "now_ms":J
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .restart local v3    # "now_ms":J
    :cond_4
    move-object/from16 v27, v2

    move-wide/from16 v28, v3

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .end local v3    # "now_ms":J
    .restart local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/ScanDetail;>;"
    .restart local v28    # "now_ms":J
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/ScanDetailCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
