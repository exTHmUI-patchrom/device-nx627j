.class Lcn/nubia/server/appmgmt/LightEffectController$Data;
.super Ljava/lang/Object;
.source "LightEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/LightEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field sessionId:I

.field state:I

.field streamType:I

.field what:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "sessionId"    # I
    .param p3, "streamType"    # I
    .param p4, "state"    # I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Lcn/nubia/server/appmgmt/LightEffectController$Data;->what:I

    .line 173
    iput p2, p0, Lcn/nubia/server/appmgmt/LightEffectController$Data;->sessionId:I

    .line 174
    iput p3, p0, Lcn/nubia/server/appmgmt/LightEffectController$Data;->streamType:I

    .line 175
    iput p4, p0, Lcn/nubia/server/appmgmt/LightEffectController$Data;->state:I

    .line 176
    return-void
.end method
