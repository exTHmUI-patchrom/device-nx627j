.class public Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
.super Ljava/lang/Object;
.source "SinglePageFlipping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;,
        Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PageFlippingController"

.field private static final TIME_NEW_APP_STAY:I = 0x12c


# instance fields
.field private mAlphaAnimTime:I

.field private mAlphaStartTime:I

.field private final mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

.field private mIsSetPageSuccTime:Z

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mPageAnimTime:I

.field private mPageEndAnimator:Landroid/animation/ValueAnimator;

.field private mPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mPageStartAnimator:Landroid/animation/ValueAnimator;

.field private mPageTotalTime:I

.field private mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;


# direct methods
.method public constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;)V
    .locals 1
    .param p1, "param"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    .param p2, "service"    # Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 37
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    .line 38
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
    .param p1, "x1"    # F

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->onPreAnimUpdate(F)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 15
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    .line 15
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
    .param p1, "x1"    # F

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->onSuccAnimUpdate(F)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;F)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
    .param p1, "x1"    # F

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->onFailAnimUpdate(F)V

    return-void
.end method

.method private cancelAnimation(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 282
    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 287
    :cond_0
    const/4 p1, 0x0

    .line 289
    :cond_1
    return-void
.end method

.method static getDimByFactor(F)F
    .locals 4
    .param p0, "factor"    # F

    .line 273
    const/4 v0, 0x0

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v0

    return v0
.end method

.method private onFailAnimUpdate(F)V
    .locals 11
    .param p1, "value"    # F

    .line 211
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 216
    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorStart()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 217
    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorEnd()F

    move-result v2

    .line 215
    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v0

    .line 218
    .local v0, "factor":F
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2, v10, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    .line 221
    .local v1, "alpha":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    .line 222
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v5, v0

    move v8, v1

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v2

    .line 223
    .local v2, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v3

    .line 224
    .local v3, "bgDim":F
    invoke-virtual {v2, v10, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    .line 225
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .line 228
    .local v4, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v5, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    .line 229
    return-void
.end method

.method private onPreAnimUpdate(F)V
    .locals 7
    .param p1, "value"    # F

    .line 56
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    .line 61
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v0

    .line 62
    .local v0, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v1

    .line 63
    .local v1, "bgDim":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    .line 64
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setFactor(F)V

    .line 66
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .line 67
    .local v2, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    .line 68
    return-void
.end method

.method private onSuccAnimUpdate(F)V
    .locals 11
    .param p1, "value"    # F

    .line 108
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFitWindowAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mIsSetPageSuccTime:Z

    if-nez v0, :cond_5

    .line 113
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->isAppWindowCreated()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    float-to-int v0, p1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    .line 116
    const/16 v0, 0x2711

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mSystemGestureService:Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/SystemGestureService;->getSingleSlideFuns(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 117
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    sub-int/2addr v0, v1

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 118
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    .line 121
    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    goto :goto_0

    .line 123
    :cond_2
    const/16 v0, 0xc8

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    .line 126
    :goto_0
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    add-int/2addr v0, v1

    .line 128
    .local v0, "time":I
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    if-ge v0, v1, :cond_3

    .line 129
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    .line 130
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    .line 133
    :cond_3
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    if-ge v0, v1, :cond_4

    .line 134
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    goto :goto_1

    .line 136
    :cond_4
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    .line 139
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mIsSetPageSuccTime:Z

    .line 140
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageSuccAnimUpdate isCreated mAlphaStartTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; mAlphaAnimTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageSuccAnimUpdate isCreated mPageTotalTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; mPageAnimTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v0    # "time":I
    :cond_5
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    .line 148
    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorStart()F

    move-result v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getAnimFactorEnd()F

    move-result v2

    .line 147
    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v0

    .line 149
    .local v0, "factor":F
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2, v10, v3}, Lcn/nubia/server/policy/edge/effects/animation/Utils;->getLinearValue(FFFFF)F

    move-result v1

    .line 152
    .local v1, "bgAlpha":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    .line 153
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move v5, v0

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v2

    .line 154
    .local v2, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v3

    .line 155
    .local v3, "bgDim":F
    invoke-virtual {v2, v10, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    .line 156
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v4, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .line 159
    .local v4, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v5, v4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    .line 160
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->cancelAnimation(Landroid/animation/ValueAnimator;)V

    .line 278
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->cancelAnimation(Landroid/animation/ValueAnimator;)V

    .line 279
    return-void
.end method

.method public initBeforeFailAnim()Z
    .locals 2

    .line 326
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkPageAnimPara(Z)Z

    move-result v0

    return v0
.end method

.method public initBeforePreAnim(IFFLjava/util/List;)Z
    .locals 2
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 293
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setDirect(IF)V

    .line 294
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setHashcodeList(Ljava/util/List;)V

    .line 295
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkPageAnimPara(Z)Z

    move-result v0

    return v0
.end method

.method public initBeforeSuccAnim(ILjava/util/List;)Z
    .locals 3
    .param p1, "direct"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 306
    .local p2, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 308
    .local v0, "downY":F
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 316
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getHeight()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    .line 311
    :pswitch_1
    const/4 v0, 0x0

    .line 312
    nop

    .line 320
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setDirect(IF)V

    .line 321
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setHashcodeList(Ljava/util/List;)V

    .line 322
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkPageAnimPara(Z)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initBeforeUpdateAnim(IFFLjava/util/List;)Z
    .locals 2
    .param p1, "direct"    # I
    .param p2, "downY"    # F
    .param p3, "currY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 300
    .local p4, "hashcodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setDirect(IF)V

    .line 301
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p4}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setHashcodeList(Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->checkPageAnimPara(Z)Z

    move-result v0

    return v0
.end method

.method public startFailAnim(FF)V
    .locals 6
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .line 183
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorStart(F)V

    .line 184
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorEnd(F)V

    .line 186
    const/16 v0, 0x1f4

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    .line 187
    invoke-static {p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPageAnimationTime(FF)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    .line 188
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    .line 189
    const/16 v0, 0x14

    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    .line 191
    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    add-int/2addr v0, v1

    .line 193
    .local v0, "time":I
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    if-ge v0, v1, :cond_0

    .line 194
    iput v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    goto :goto_0

    .line 196
    :cond_0
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    iget v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    .line 199
    :goto_0
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    .line 200
    .local v1, "listener":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$FailAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$1;)V

    .line 202
    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    .line 203
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 208
    return-void
.end method

.method public startPreAnim(FF)V
    .locals 5
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .line 42
    new-instance v0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$1;)V

    .line 44
    .local v0, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const-string v1, "PageFlippingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPreAnim startValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "; endValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    .line 47
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    invoke-static {p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPageAnimationTime(FF)I

    move-result v1

    .line 51
    .local v1, "time":I
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    return-void
.end method

.method public startSuccAnim(FF)V
    .locals 5
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .line 87
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorStart(F)V

    .line 88
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setAnimFactorEnd(F)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mIsSetPageSuccTime:Z

    .line 91
    const/16 v1, 0xdac

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    .line 92
    invoke-static {p1, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPageAnimationTime(FF)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageAnimTime:I

    .line 93
    iget v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    const/16 v2, 0xc8

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaStartTime:I

    .line 94
    iput v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAlphaAnimTime:I

    .line 96
    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-direct {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;)V

    .line 97
    .local v1, "listener":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/EndAnimListener;
    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$succAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$1;)V

    .line 99
    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    iget v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    int-to-float v0, v0

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    .line 100
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageTotalTime:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 105
    return-void
.end method

.method public updateAnim(FFF)V
    .locals 7
    .param p1, "downY"    # F
    .param p2, "currY"    # F
    .param p3, "factorEnd"    # F

    .line 250
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByY(F)F

    move-result v0

    .line 253
    .local v0, "factor":F
    cmpl-float v1, v0, p3

    if-lez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 255
    .local v1, "factorCurr":F
    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageStartAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 256
    .end local v1    # "factorCurr":F
    goto :goto_0

    .line 258
    .end local v0    # "factor":F
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->updateLineFlip(F)V

    .line 259
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v0, p2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getFactorByY(F)F

    move-result v0

    .line 261
    .restart local v0    # "factor":F
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    .line 262
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->getPage(FIIFF)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;

    move-result-object v1

    .line 263
    .local v1, "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->getDimByFactor(F)F

    move-result v2

    .line 264
    .local v2, "bgDim":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;->setDim(FF)V

    .line 265
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v3, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->setFactor(F)V

    .line 267
    new-instance v3, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;

    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mPageList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;-><init>([Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Icon;Ljava/util/List;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/StaggerPage;)V

    .line 268
    .local v3, "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    iget-object v4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->mAnimParam:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    invoke-virtual {v4, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->onProcess(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;)V

    .line 270
    .end local v1    # "page":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/Page;
    .end local v2    # "bgDim":F
    .end local v3    # "drawContent":Lcn/nubia/server/policy/edge/effects/animation/pageflipping/DrawContent;
    :cond_1
    :goto_0
    return-void
.end method
