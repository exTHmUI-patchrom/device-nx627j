.class Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$1;
.super Landroid/util/FloatProperty;
.source "ClipImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 239
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;)Ljava/lang/Float;
    .locals 2
    .param p1, "object"    # Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;

    .line 247
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getDegreeStart()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 239
    check-cast p1, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$1;->get(Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;F)V
    .locals 2
    .param p1, "object"    # Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;
    .param p2, "value"    # F

    .line 242
    float-to-double v0, p2

    invoke-static {p1, v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->access$000(Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;D)V

    .line 243
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 239
    check-cast p1, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView$1;->setValue(Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;F)V

    return-void
.end method
