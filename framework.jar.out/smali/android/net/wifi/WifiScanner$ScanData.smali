.class public Landroid/net/wifi/WifiScanner$ScanData;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllChannelsScanned:Z

.field private mBucketsScanned:I

.field private mFlags:I

.field private mId:I

.field private mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 430
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIZ[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "bucketsScanned"    # I
    .param p4, "allChannelsScanned"    # Z
    .param p5, "results"    # [Landroid/net/wifi/ScanResult;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 366
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 367
    iput p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    .line 368
    iput-boolean p4, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    .line 369
    iput-object p5, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    .line 370
    return-void
.end method

.method public constructor <init>(II[Landroid/net/wifi/ScanResult;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "results"    # [Landroid/net/wifi/ScanResult;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 358
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 359
    iput-object p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    .line 360
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "s"    # Landroid/net/wifi/WifiScanner$ScanData;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 374
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 375
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    .line 376
    iget-boolean v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    .line 377
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 379
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aget-object v1, v1, v0

    .line 380
    .local v1, "result":Landroid/net/wifi/ScanResult;
    new-instance v2, Landroid/net/wifi/ScanResult;

    invoke-direct {v2, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    .line 381
    .local v2, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aput-object v2, v3, v0

    .line 378
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .end local v2    # "newResult":Landroid/net/wifi/ScanResult;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public getBucketsScanned()I
    .locals 1

    .line 395
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 390
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 386
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    return v0
.end method

.method public getResults()[Landroid/net/wifi/ScanResult;
    .locals 1

    .line 404
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public isAllChannelsScanned()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 414
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 415
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aget-object v1, v1, v0

    .line 422
    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 420
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 425
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    :cond_1
    return-void
.end method
