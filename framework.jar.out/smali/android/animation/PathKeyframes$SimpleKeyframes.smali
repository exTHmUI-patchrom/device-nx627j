.class abstract Landroid/animation/PathKeyframes$SimpleKeyframes;
.super Ljava/lang/Object;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleKeyframes"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/PathKeyframes$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/animation/PathKeyframes$1;

    .line 207
    invoke-direct {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframes;
    .locals 2

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "clone":Landroid/animation/Keyframes;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 222
    goto :goto_0

    :catch_0
    move-exception v1

    .line 223
    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v0

    return-object v0
.end method

.method public getKeyframes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/animation/PathKeyframes;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKeyframes()Ljava/util/List;
    .locals 1

    .line 207
    invoke-virtual {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;->getKeyframes()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 0
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    .line 210
    return-void
.end method
