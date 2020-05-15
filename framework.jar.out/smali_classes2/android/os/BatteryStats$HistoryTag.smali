.class public final Landroid/os/BatteryStats$HistoryTag;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryTag"
.end annotation


# instance fields
.field public poolIdx:I

.field public string:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1382
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1383
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1385
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/BatteryStats$HistoryTag;

    .line 1387
    .local v2, "that":Landroid/os/BatteryStats$HistoryTag;
    iget v3, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget v4, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    if-eq v3, v4, :cond_2

    return v1

    .line 1388
    :cond_2
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 1390
    :cond_3
    return v0

    .line 1383
    .end local v2    # "that":Landroid/os/BatteryStats$HistoryTag;
    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1395
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1396
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    add-int/2addr v1, v2

    .line 1397
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 1375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1377
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1378
    return-void
.end method

.method public setTo(Landroid/os/BatteryStats$HistoryTag;)V
    .locals 1
    .param p1, "o"    # Landroid/os/BatteryStats$HistoryTag;

    .line 1358
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1359
    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1360
    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1361
    return-void
.end method

.method public setTo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "_string"    # Ljava/lang/String;
    .param p2, "_uid"    # I

    .line 1364
    iput-object p1, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 1365
    iput p2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 1366
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 1367
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1370
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1371
    iget v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    return-void
.end method
