.class public Landroid/mtp/MtpDeviceInfo;
.super Ljava/lang/Object;
.source "MtpDeviceInfo.java"


# instance fields
.field private mEventsSupported:[I

.field private mManufacturer:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mOperationsSupported:[I

.field private mSerialNumber:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static isSupported([II)Z
    .locals 4
    .param p0, "set"    # [I
    .param p1, "code"    # I

    .line 169
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 170
    .local v3, "element":I
    if-ne v3, p1, :cond_0

    .line 171
    const/4 v0, 0x1

    return v0

    .line 169
    .end local v3    # "element":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_1
    return v1
.end method


# virtual methods
.method public final getEventsSupported()[I
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mEventsSupported:[I

    return-object v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperationsSupported()[I
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mOperationsSupported:[I

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isEventSupported(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 161
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mEventsSupported:[I

    invoke-static {v0, p1}, Landroid/mtp/MtpDeviceInfo;->isSupported([II)Z

    move-result v0

    return v0
.end method

.method public isOperationSupported(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 152
    iget-object v0, p0, Landroid/mtp/MtpDeviceInfo;->mOperationsSupported:[I

    invoke-static {v0, p1}, Landroid/mtp/MtpDeviceInfo;->isSupported([II)Z

    move-result v0

    return v0
.end method
