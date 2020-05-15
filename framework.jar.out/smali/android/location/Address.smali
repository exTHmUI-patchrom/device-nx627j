.class public Landroid/location/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdminArea:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mFeatureName:Ljava/lang/String;

.field private mHasLatitude:Z

.field private mHasLongitude:Z

.field private mLatitude:D

.field private mLocale:Ljava/util/Locale;

.field private mLocality:Ljava/lang/String;

.field private mLongitude:D

.field private mMaxAddressLineIndex:I

.field private mPhone:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mPremises:Ljava/lang/String;

.field private mSubAdminArea:Ljava/lang/String;

.field private mSubLocality:Ljava/lang/String;

.field private mSubThoroughfare:Ljava/lang/String;

.field private mThoroughfare:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 475
    new-instance v0, Landroid/location/Address$1;

    invoke-direct {v0}, Landroid/location/Address$1;-><init>()V

    sput-object v0, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    .line 54
    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    .line 64
    iput-object p1, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/location/Address;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/location/Address;

    .line 34
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$100(Landroid/location/Address;)I
    .locals 1
    .param p0, "x0"    # Landroid/location/Address;

    .line 34
    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return v0
.end method

.method static synthetic access$1002(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/location/Address;I)I
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # I

    .line 34
    iput p1, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return p1
.end method

.method static synthetic access$1102(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/location/Address;)Z
    .locals 1
    .param p0, "x0"    # Landroid/location/Address;

    .line 34
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/location/Address;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Landroid/location/Address;->mHasLatitude:Z

    return p1
.end method

.method static synthetic access$1402(Landroid/location/Address;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # D

    .line 34
    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$1500(Landroid/location/Address;)Z
    .locals 1
    .param p0, "x0"    # Landroid/location/Address;

    .line 34
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/location/Address;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Landroid/location/Address;->mHasLongitude:Z

    return p1
.end method

.method static synthetic access$1602(Landroid/location/Address;D)D
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # D

    .line 34
    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$1702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Landroid/location/Address;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/location/Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public clearLatitude()V
    .locals 1

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    .line 322
    return-void
.end method

.method public clearLongitude()V
    .locals 1

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    .line 359
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 530
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAddressLine(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 89
    if-ltz p1, :cond_1

    .line 92
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdminArea()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 410
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 302
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v0, :cond_0

    .line 303
    iget-wide v0, p0, Landroid/location/Address;->mLatitude:D

    return-wide v0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 71
    iget-object v0, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 339
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v0, :cond_0

    .line 340
    iget-wide v0, p0, Landroid/location/Address;->mLongitude:D

    return-wide v0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getMaxAddressLineIndex()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPremises()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    return-object v0
.end method

.method public getSubAdminArea()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getSubLocality()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    return-object v0
.end method

.method public getSubThoroughfare()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    return-object v0
.end method

.method public getThoroughfare()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasLatitude()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    return v0
.end method

.method public hasLongitude()Z
    .locals 1

    .line 329
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    return v0
.end method

.method public setAddressLine(ILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "line"    # Ljava/lang/String;

    .line 102
    if-ltz p1, :cond_3

    .line 105
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    if-nez p2, :cond_1

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 113
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 114
    .local v1, "i":Ljava/lang/Integer;
    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 115
    .end local v1    # "i":Ljava/lang/Integer;
    goto :goto_0

    .line 117
    :cond_1
    iget v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    .line 119
    :cond_2
    return-void

    .line 103
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdminArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "adminArea"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryName"    # Ljava/lang/String;

    .line 284
    iput-object p1, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 418
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    .line 419
    return-void
.end method

.method public setFeatureName(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureName"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .line 313
    iput-wide p1, p0, Landroid/location/Address;->mLatitude:D

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    .line 315
    return-void
.end method

.method public setLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "locality"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .line 350
    iput-wide p1, p0, Landroid/location/Address;->mLongitude:D

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    .line 352
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .line 376
    iput-object p1, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .line 252
    iput-object p1, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setPremises(Ljava/lang/String;)V
    .locals 0
    .param p1, "premises"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setSubAdminArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "subAdminArea"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setSubLocality(Ljava/lang/String;)V
    .locals 0
    .param p1, "sublocality"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setSubThoroughfare(Ljava/lang/String;)V
    .locals 0
    .param p1, "subthoroughfare"    # Ljava/lang/String;

    .line 222
    iput-object p1, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setThoroughfare(Ljava/lang/String;)V
    .locals 0
    .param p1, "thoroughfare"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "Url"    # Ljava/lang/String;

    .line 391
    iput-object p1, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Address[addressLines=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const/4 v1, 0x0

    .line 425
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/location/Address;->mMaxAddressLineIndex:I

    if-gt v1, v2, :cond_2

    .line 426
    if-lez v1, :cond_0

    .line 427
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    iget-object v2, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 432
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 433
    const-string/jumbo v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 435
    :cond_1
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    .end local v2    # "line":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    const-string v2, ",feature="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v2, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v2, ",admin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget-object v2, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v2, ",sub-admin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    iget-object v2, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v2, ",locality="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v2, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v2, ",thoroughfare="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v2, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v2, ",postalCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v2, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v2, ",countryCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v2, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v2, ",countryName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v2, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v2, ",hasLatitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-boolean v2, p0, Landroid/location/Address;->mHasLatitude:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 459
    const-string v2, ",latitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-wide v2, p0, Landroid/location/Address;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 461
    const-string v2, ",hasLongitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-boolean v2, p0, Landroid/location/Address;->mHasLongitude:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 463
    const-string v2, ",longitude="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-wide v2, p0, Landroid/location/Address;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 465
    const-string v2, ",phone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v2, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v2, ",url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v2, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v2, ",extras="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v2, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 534
    iget-object v0, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Landroid/location/Address;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/location/Address;->mAddressLines:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 540
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 542
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_0

    .line 546
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/location/Address;->mFeatureName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Landroid/location/Address;->mAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Landroid/location/Address;->mSubAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Landroid/location/Address;->mLocality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Landroid/location/Address;->mSubLocality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Landroid/location/Address;->mThoroughfare:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Landroid/location/Address;->mSubThoroughfare:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Landroid/location/Address;->mPremises:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Landroid/location/Address;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Landroid/location/Address;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/location/Address;->mCountryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-boolean v0, p0, Landroid/location/Address;->mHasLatitude:Z

    if-eqz v0, :cond_2

    .line 559
    iget-wide v0, p0, Landroid/location/Address;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 561
    :cond_2
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-boolean v0, p0, Landroid/location/Address;->mHasLongitude:Z

    if-eqz v0, :cond_3

    .line 563
    iget-wide v0, p0, Landroid/location/Address;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 565
    :cond_3
    iget-object v0, p0, Landroid/location/Address;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Landroid/location/Address;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Landroid/location/Address;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 568
    return-void
.end method
