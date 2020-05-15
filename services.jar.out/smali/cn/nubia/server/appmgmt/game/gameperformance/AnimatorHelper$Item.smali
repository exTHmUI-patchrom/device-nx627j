.class public Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;
.super Ljava/lang/Object;
.source "AnimatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final ALPHA:Ljava/lang/String; = "alpha"

.field public static final CUST_MOVE_Y:Ljava/lang/String; = "cust_moveY"

.field public static final CUST_PERCENT_END:Ljava/lang/String; = "cust_percent_end"

.field public static final CUST_PERCENT_START:Ljava/lang/String; = "cust_percent_start"

.field public static final ROTATE:Ljava/lang/String; = "rotation"

.field public static final SCALEX:Ljava/lang/String; = "scaleX"

.field public static final SCALEY:Ljava/lang/String; = "scaleY"

.field public static final TRANSLATIONX:Ljava/lang/String; = "translationX"

.field public static final TRANSLATIONY:Ljava/lang/String; = "translationY"

.field private static final sDefaultInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private m_anim:Landroid/animation/ObjectAnimator;

.field private final m_attr:Ljava/lang/String;

.field private final m_curve:[F

.field private m_delay:I

.field private m_duration:I

.field private m_paras:[F

.field private m_repeatCount:I

.field private m_viewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->sDefaultInterpolator:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[F[FII)V
    .locals 0
    .param p1, "viewId"    # I
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "paras"    # [F
    .param p4, "curve"    # [F
    .param p5, "duration"    # I
    .param p6, "delay"    # I

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_viewId:I

    .line 105
    iput-object p2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    .line 107
    iput-object p4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_curve:[F

    .line 108
    iput p5, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_duration:I

    .line 109
    iput p6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_delay:I

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;
    .param p1, "x1"    # Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->getAnimator(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static final addInterpolator(Landroid/animation/ObjectAnimator;[F)V
    .locals 6
    .param p0, "anim"    # Landroid/animation/ObjectAnimator;
    .param p1, "curve"    # [F

    .line 167
    if-nez p1, :cond_1

    .line 168
    if-eqz p0, :cond_0

    .line 169
    sget-object v0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->sDefaultInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 171
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x0

    .line 174
    .local v0, "p":Landroid/view/animation/PathInterpolator;
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 175
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x3

    aget v5, p1, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, v1

    .line 177
    :cond_2
    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    :cond_3
    return-void
.end method

.method private getAnimator(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;)Landroid/animation/Animator;
    .locals 9
    .param p1, "helper"    # Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 113
    iget v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_viewId:I

    invoke-static {p1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->access$100(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    return-object v1

    .line 117
    :cond_0
    if-nez v0, :cond_1

    .line 118
    const/4 v1, 0x0

    return-object v1

    .line 120
    :cond_1
    const/4 v1, 0x0

    .line 121
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    const-string v2, "alpha"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v2, :cond_2

    const-string/jumbo v2, "rotation"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "scaleX"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "scaleY"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "translationX"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    .line 123
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "translationY"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    if-eqz v2, :cond_5

    .line 125
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    array-length v2, v2

    if-ne v2, v5, :cond_3

    .line 126
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    new-array v5, v5, [F

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v6, v6, v4

    aput v6, v5, v4

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v4, v4, v3

    aput v4, v5, v3

    invoke-static {v0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_0

    .line 127
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    array-length v2, v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_4

    .line 128
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    new-array v6, v6, [F

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v7, v7, v4

    aput v7, v6, v4

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v4, v4, v3

    aput v4, v6, v3

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v3, v3, v5

    aput v3, v6, v5

    invoke-static {v0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_0

    .line 129
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    array-length v2, v2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_8

    .line 130
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    new-array v7, v7, [F

    iget-object v8, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v8, v8, v4

    aput v8, v7, v4

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v4, v4, v3

    aput v4, v7, v3

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v3, v3, v5

    aput v3, v7, v5

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v3, v3, v6

    aput v3, v7, v6

    invoke-static {v0, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_0

    .line 133
    :cond_5
    const-string v2, "cust_percent_start"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    array-length v2, v2

    if-ne v2, v5, :cond_6

    .line 136
    move-object v2, v0

    check-cast v2, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;

    sget-object v6, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->CUST_PERCENT_START:Landroid/util/Property;

    new-array v5, v5, [F

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v7, v7, v4

    aput v7, v5, v4

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v4, v4, v3

    aput v4, v5, v3

    invoke-static {v2, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    .line 139
    :cond_6
    const-string v2, "cust_percent_end"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    array-length v2, v2

    if-ne v2, v5, :cond_7

    .line 142
    move-object v2, v0

    check-cast v2, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;

    sget-object v6, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->CUST_PERCENT_END:Landroid/util/Property;

    new-array v5, v5, [F

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v7, v7, v4

    aput v7, v5, v4

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v4, v4, v3

    aput v4, v5, v3

    invoke-static {v2, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_7
    const-string v2, "cust_moveY"

    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    array-length v2, v2

    if-ne v2, v5, :cond_8

    .line 148
    move-object v2, v0

    check-cast v2, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    sget-object v6, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->CUST_MOVE_Y:Landroid/util/Property;

    new-array v5, v5, [F

    iget-object v7, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v7, v7, v4

    aput v7, v5, v4

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    aget v4, v4, v3

    aput v4, v5, v3

    invoke-static {v2, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 152
    :cond_8
    :goto_0
    if-eqz v1, :cond_9

    .line 153
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_curve:[F

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->addInterpolator(Landroid/animation/ObjectAnimator;[F)V

    .line 154
    iget v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_duration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    iget v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_repeatCount:I

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 156
    iget v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_delay:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 158
    :cond_9
    const-string/jumbo v2, "vigi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnimatorHelper getAnimator anim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string/jumbo v2, "vigi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnimatorHelper getAnimator m_attr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string/jumbo v2, "vigi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnimatorHelper getAnimator m_paras = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v2, "vigi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnimatorHelper getAnimator m_duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_duration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v2, "vigi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnimatorHelper getAnimator m_delay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_delay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    .line 164
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 232
    return-void
.end method

.method public getAttr()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_attr:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()[F
    .locals 1

    .line 182
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    return-object v0
.end method

.method public getViewId()I
    .locals 1

    .line 215
    iget v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_viewId:I

    return v0
.end method

.method public setDelay(I)V
    .locals 3
    .param p1, "delay"    # I

    .line 201
    iput p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_delay:I

    .line 202
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_delay:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 206
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 194
    iput p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_duration:I

    .line 195
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 199
    return-void
.end method

.method public setParams([F)V
    .locals 4
    .param p1, "params"    # [F

    .line 185
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    .line 186
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v3

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_paras:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 192
    :cond_1
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2
    .param p1, "count"    # I

    .line 208
    iput p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_repeatCount:I

    .line 209
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_repeatCount:I

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 213
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_viewId:I

    .line 219
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->m_anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 223
    return-void
.end method
