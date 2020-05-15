.class public final Landroid/service/euicc/EuiccProfileInfo$Builder;
.super Ljava/lang/Object;
.source "EuiccProfileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/EuiccProfileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

.field private mIccid:Ljava/lang/String;

.field private mNickname:Ljava/lang/String;

.field private mPolicyRules:I

.field private mProfileClass:I

.field private mProfileName:Ljava/lang/String;

.field private mServiceProviderName:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/service/euicc/EuiccProfileInfo;)V
    .locals 1
    .param p1, "baseProfile"    # Landroid/service/euicc/EuiccProfileInfo;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->access$100(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    .line 224
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->access$200(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mNickname:Ljava/lang/String;

    .line 225
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->access$300(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mServiceProviderName:Ljava/lang/String;

    .line 226
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->access$400(Landroid/service/euicc/EuiccProfileInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileName:Ljava/lang/String;

    .line 227
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->access$500(Landroid/service/euicc/EuiccProfileInfo;)I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileClass:I

    .line 228
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->access$600(Landroid/service/euicc/EuiccProfileInfo;)I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mState:I

    .line 229
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->access$700(Landroid/service/euicc/EuiccProfileInfo;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 230
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->access$800(Landroid/service/euicc/EuiccProfileInfo;)I

    move-result v0

    iput v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mPolicyRules:I

    .line 231
    invoke-static {p1}, Landroid/service/euicc/EuiccProfileInfo;->access$900(Landroid/service/euicc/EuiccProfileInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mAccessRules:Ljava/util/List;

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    .line 220
    return-void

    .line 217
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


# virtual methods
.method public build()Landroid/service/euicc/EuiccProfileInfo;
    .locals 12

    .line 236
    iget-object v0, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Landroid/service/euicc/EuiccProfileInfo;

    iget-object v2, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mNickname:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mServiceProviderName:Ljava/lang/String;

    iget-object v5, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileName:Ljava/lang/String;

    iget v6, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileClass:I

    iget v7, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mState:I

    iget-object v8, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    iget v9, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mPolicyRules:I

    iget-object v10, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mAccessRules:Ljava/util/List;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/service/euicc/EuiccProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/service/carrier/CarrierIdentifier;ILjava/util/List;Landroid/service/euicc/EuiccProfileInfo$1;)V

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ICCID must be set for a profile."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCarrierIdentifier(Landroid/service/carrier/CarrierIdentifier;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # Landroid/service/carrier/CarrierIdentifier;

    .line 292
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mCarrierIdentifier:Landroid/service/carrier/CarrierIdentifier;

    .line 293
    return-object p0
.end method

.method public setIccid(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mIccid:Ljava/lang/String;

    .line 257
    return-object p0

    .line 254
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

.method public setNickname(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 262
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mNickname:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public setPolicyRules(I)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 298
    iput p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mPolicyRules:I

    .line 299
    return-object p0
.end method

.method public setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 280
    iput p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileClass:I

    .line 281
    return-object p0
.end method

.method public setProfileName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 274
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mProfileName:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public setServiceProviderName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mServiceProviderName:Ljava/lang/String;

    .line 269
    return-object p0
.end method

.method public setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 286
    iput p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mState:I

    .line 287
    return-object p0
.end method

.method public setUiccAccessRule(Ljava/util/List;)Landroid/service/euicc/EuiccProfileInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)",
            "Landroid/service/euicc/EuiccProfileInfo$Builder;"
        }
    .end annotation

    .line 304
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccAccessRule;>;"
    iput-object p1, p0, Landroid/service/euicc/EuiccProfileInfo$Builder;->mAccessRules:Ljava/util/List;

    .line 305
    return-object p0
.end method
