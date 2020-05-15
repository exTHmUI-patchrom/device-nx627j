.class public final Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;
.super Ljava/lang/Object;
.source "EuiccRulesAuthTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/euicc/EuiccRulesAuthTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

.field private mPolicyRuleFlags:[I

.field private mPolicyRules:[I

.field private mPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "ruleNum"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    .line 69
    new-array v0, p1, [[Landroid/service/carrier/CarrierIdentifier;

    iput-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    .line 70
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRuleFlags:[I

    .line 71
    return-void
.end method


# virtual methods
.method public add(ILjava/util/List;I)Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;
    .locals 3
    .param p1, "policyRules"    # I
    .param p3, "policyRuleFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;I)",
            "Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;"
        }
    .end annotation

    .line 95
    .local p2, "carrierId":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    iget v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    iget-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    iget v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    aput p1, v0, v1

    .line 99
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    iget v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/service/carrier/CarrierIdentifier;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/service/carrier/CarrierIdentifier;

    aput-object v2, v0, v1

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRuleFlags:[I

    iget v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    aput p3, v0, v1

    .line 103
    iget v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    .line 104
    return-object p0

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public build()Landroid/telephony/euicc/EuiccRulesAuthTable;
    .locals 5

    .line 78
    iget v0, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    iget-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 85
    new-instance v0, Landroid/telephony/euicc/EuiccRulesAuthTable;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mCarrierIds:[[Landroid/service/carrier/CarrierIdentifier;

    iget-object v3, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRuleFlags:[I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/euicc/EuiccRulesAuthTable;-><init>([I[[Landroid/service/carrier/CarrierIdentifier;[ILandroid/telephony/euicc/EuiccRulesAuthTable$1;)V

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough rules are added, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPolicyRules:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
