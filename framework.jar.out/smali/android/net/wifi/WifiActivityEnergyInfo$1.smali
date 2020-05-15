.class Landroid/net/wifi/WifiActivityEnergyInfo$1;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiActivityEnergyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiActivityEnergyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 30
    .param p1, "in"    # Landroid/os/Parcel;

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 107
    .local v15, "timestamp":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 108
    .local v17, "stackState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 109
    .local v18, "txTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v20

    .line 110
    .local v20, "txTimePerLevel":[J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 111
    .local v21, "rxTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 112
    .local v23, "scanTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 113
    .local v25, "idleTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v27

    .line 114
    .local v27, "energyUsed":J
    new-instance v29, Landroid/net/wifi/WifiActivityEnergyInfo;

    move-object/from16 v0, v29

    move-wide v1, v15

    move/from16 v3, v17

    move-wide/from16 v4, v18

    move-object/from16 v6, v20

    move-wide/from16 v7, v21

    move-wide/from16 v9, v23

    move-wide/from16 v11, v25

    move-wide/from16 v13, v27

    invoke-direct/range {v0 .. v14}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJJ)V

    return-object v29
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiActivityEnergyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 1
    .param p1, "size"    # I

    .line 118
    new-array v0, p1, [Landroid/net/wifi/WifiActivityEnergyInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiActivityEnergyInfo$1;->newArray(I)[Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method
