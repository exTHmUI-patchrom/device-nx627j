.class public Landroid/media/audiopolicy/AudioMixingRule;
.super Ljava/lang/Object;
.source "AudioMixingRule.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMixingRule$Builder;,
        Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    }
.end annotation


# static fields
.field public static final RULE_EXCLUDE_ATTRIBUTE_CAPTURE_PRESET:I = 0x8002

.field public static final RULE_EXCLUDE_ATTRIBUTE_USAGE:I = 0x8001

.field public static final RULE_EXCLUDE_UID:I = 0x8004

.field private static final RULE_EXCLUSION_MASK:I = 0x8000

.field public static final RULE_MATCH_ATTRIBUTE_CAPTURE_PRESET:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RULE_MATCH_ATTRIBUTE_USAGE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RULE_MATCH_UID:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetMixType:I


# direct methods
.method private constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "mixType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p2, "criteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    .line 47
    iput p1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/ArrayList;Landroid/media/audiopolicy/AudioMixingRule$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/ArrayList;
    .param p3, "x2"    # Landroid/media/audiopolicy/AudioMixingRule$1;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule;-><init>(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 43
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidAttributesSystemApiRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 43
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidSystemApiRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 43
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isValidRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 43
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isAudioAttributeRule(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 43
    invoke-static {p0}, Landroid/media/audiopolicy/AudioMixingRule;->isPlayerRule(I)Z

    move-result v0

    return v0
.end method

.method private static areCriteriaEquivalent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;)Z"
        }
    .end annotation

    .line 151
    .local p0, "cr1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    .local p1, "cr2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 153
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v0

    .line 155
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    .line 151
    :cond_4
    :goto_0
    return v0
.end method

.method private static isAudioAttributeRule(I)Z
    .locals 1
    .param p0, "match_rule"    # I

    .line 225
    packed-switch p0, :pswitch_data_0

    .line 230
    const/4 v0, 0x0

    return v0

    .line 228
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isPlayerRule(I)Z
    .locals 3
    .param p0, "rule"    # I

    .line 214
    const v0, -0x8001

    and-int/2addr v0, p0

    .line 215
    .local v0, "match_rule":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 220
    const/4 v1, 0x0

    return v1

    .line 218
    :cond_0
    return v1
.end method

.method private static isValidAttributesSystemApiRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    .line 192
    packed-switch p0, :pswitch_data_0

    .line 197
    const/4 v0, 0x0

    return v0

    .line 195
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidRule(I)Z
    .locals 2
    .param p0, "rule"    # I

    .line 202
    const v0, -0x8001

    and-int/2addr v0, p0

    .line 203
    .local v0, "match_rule":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 209
    const/4 v1, 0x0

    return v1

    .line 207
    :cond_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidSystemApiRule(I)Z
    .locals 1
    .param p0, "rule"    # I

    .line 181
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    return v0

    .line 185
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 167
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioMixingRule;

    .line 170
    .local v2, "that":Landroid/media/audiopolicy/AudioMixingRule;
    iget v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    iget v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    .line 171
    invoke-static {v3, v4}, Landroid/media/audiopolicy/AudioMixingRule;->areCriteriaEquivalent(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 170
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 167
    .end local v2    # "that":Landroid/media/audiopolicy/AudioMixingRule;
    :cond_3
    :goto_1
    return v1
.end method

.method getCriteria()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTargetMixType()I
    .locals 1

    .line 159
    iget v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 176
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mTargetMixType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isAffectingUsage(I)Z
    .locals 4
    .param p1, "usage"    # I

    .line 139
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMixingRule;->mCriteria:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 140
    .local v1, "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    iget v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mRule:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->mAttr:Landroid/media/AudioAttributes;

    .line 142
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 143
    return v3

    .line 145
    .end local v1    # "criterion":Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;
    :cond_0
    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
