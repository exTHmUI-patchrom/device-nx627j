.class Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView$1;
.super Landroid/util/FloatProperty;
.source "CircleClipImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 168
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    .line 176
    invoke-static {p1}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->access$000(Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    check-cast p1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView$1;->get(Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;F)V
    .locals 0
    .param p1, "object"    # Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;
    .param p2, "value"    # F

    .line 171
    invoke-virtual {p1, p2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setMoveY(F)V

    .line 172
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 168
    check-cast p1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView$1;->setValue(Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;F)V

    return-void
.end method
