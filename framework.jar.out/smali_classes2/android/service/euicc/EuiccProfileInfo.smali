.class public final Landroid/service/euicc/EuiccProfileInfo;
.super Ljava/lang/Object;
.source "EuiccProfileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/euicc/EuiccProfileInfo$Builder;,
        Landroid/service/euicc/EuiccProfileInfo$ProfileState;,
        Landroid/service/euicc/EuiccProfileInfo$ProfileClass;,
        Landroid/service/euicc/EuiccProfileInfo$PolicyRule;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_RULE_DELETE_AFTER_DISABLING:I = 0x4

.field public static final POLICY_RULE_DO_NOT_DELETE:I = 0x2

.field public static final POLICY_RULE_DO_NOT_DISABLE:I = 0x1

.field public static final PROFILE_CLASS_OPERATIONAL:I = 0x2

.field public static final PROFILE_CLASS_PROVISIONING:I = 0x1

.field public static final PROFILE_CLASS_TESTING:I = 0x0

.field public static final PROFILE_CLASS_UNSET:I = -0x1

.field public static final PROFILE_STATE_DISABLED:I = 0x0

.field public static final PROFILE_STATE_ENABLED:I = 0x1

.field public static final PROFILE_STATE_UNSET:I = -0x1


# instance fields
.field private final mAccessRules:[Landroid/telephony/UiccAccessRule;

.field private final mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

.field private final mIccid:Ljava/lang/String;

.field private final mNickname:Ljava/lang/String;

.field private final mPolicyRules:I

.field private final mProfileClass:I

.field private final mProfileName:Ljava/lang/String;

.field private final mServiceProviderName:Ljava/lang/String;

.field private final mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Landroid/service/euicc/EuiccProfileInfo$1;

    invoke-direct {v0}, Landroid/service/euicc/EuiccProfileInfo$1;-><init>()V

    sput-object v0, Landroid/service/euicc/EuiccProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 171
    .local v0, "exist":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 172
    sget-object v1, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/carrier/CarrierIdentifier;

    iput-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    goto :goto_0

    .line 174
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 176
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    .line 177
    sget-object v1, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/UiccAccessRule;

    iput-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/euicc/EuiccProfileInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/service/euicc/EuiccProfileInfo$1;

    .line 39
    invoke-direct {p0, p1}, Landroid/service/euicc/EuiccProfileInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/service/carrier/CarrierIdentifier;ILjava/util/List;)V
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "serviceProviderName"    # Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .param p5, "profileClass"    # I
    .param p6, "state"    # I
    .param p7, "carrierIdentifier"    # Landroid/service/carrier/CarrierIdentifier;
    .param p8, "policyRules"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Landroid/service/carrier/CarrierIdentifier;",
            "I",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p9, "accessRules":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    .line 322
    iput-object p4, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    .line 323
    iput p5, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    .line 324
    iput p6, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    .line 325
    iput-object p7, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 326
    iput p8, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    .line 327
    if-eqz p9, :cond_0

    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 328
    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/UiccAccessRule;

    invoke-interface {p9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/UiccAccessRule;

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    goto :goto_0

    .line 330
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 332
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/service/carrier/CarrierIdentifier;ILjava/util/List;Landroid/service/euicc/EuiccProfileInfo$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroid/service/carrier/CarrierIdentifier;
    .param p8, "x7"    # I
    .param p9, "x8"    # Ljava/util/List;
    .param p10, "x9"    # Landroid/service/euicc/EuiccProfileInfo$1;

    .line 39
    invoke-direct/range {p0 .. p9}, Landroid/service/euicc/EuiccProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/service/carrier/CarrierIdentifier;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V
    .locals 3
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "accessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p3, "nickname"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 153
    iput-object p3, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    .line 157
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    .line 158
    iput v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    .line 159
    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    .line 161
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iccid contains invalid characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 39
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 39
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 39
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 39
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/service/euicc/EuiccProfileInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 39
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    return v0
.end method

.method static synthetic access$600(Landroid/service/euicc/EuiccProfileInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 39
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    return v0
.end method

.method static synthetic access$700(Landroid/service/euicc/EuiccProfileInfo;)Landroid/service/carrier/CarrierIdentifier;
    .locals 1
    .param p0, "x0"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 39
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    return-object v0
.end method

.method static synthetic access$800(Landroid/service/euicc/EuiccProfileInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 39
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    return v0
.end method

.method static synthetic access$900(Landroid/service/euicc/EuiccProfileInfo;)[Landroid/telephony/UiccAccessRule;
    .locals 1
    .param p0, "x0"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 39
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 397
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 398
    return v0

    .line 400
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 404
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/euicc/EuiccProfileInfo;

    .line 405
    .local v2, "that":Landroid/service/euicc/EuiccProfileInfo;
    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    .line 406
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    .line 407
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    .line 408
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    iget v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    iget v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 411
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    iget v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    iget-object v4, v2, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 413
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 405
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 401
    .end local v2    # "that":Landroid/service/euicc/EuiccProfileInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public getCarrierIdentifier()Landroid/service/carrier/CarrierIdentifier;
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyRules()I
    .locals 1

    .line 382
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    return v0
.end method

.method public getProfileClass()I
    .locals 1

    .line 365
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 371
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    return v0
.end method

.method public getUiccAccessRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 343
    :cond_0
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasPolicyRule(I)Z
    .locals 1
    .param p1, "policy"    # I

    .line 392
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPolicyRules()Z
    .locals 1

    .line 387
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 418
    const/4 v0, 0x1

    .line 419
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 420
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 421
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 422
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 423
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    add-int/2addr v2, v3

    .line 424
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    add-int/2addr v0, v3

    .line 425
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 426
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget v3, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    add-int/2addr v0, v3

    .line 427
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 428
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EuiccProfileInfo (nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceProviderName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", policyRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", accessRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 448
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 182
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mIccid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mServiceProviderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mProfileClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 190
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    invoke-virtual {v0, p1, p2}, Landroid/service/carrier/CarrierIdentifier;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 192
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    :goto_0
    iget v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mPolicyRules:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 196
    return-void
.end method
