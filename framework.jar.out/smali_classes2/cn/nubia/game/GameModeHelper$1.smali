.class Lcn/nubia/game/GameModeHelper$1;
.super Landroid/util/Singleton;
.source "GameModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/game/GameModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcn/nubia/game/GameModeHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcn/nubia/game/GameModeHelper;
    .locals 1

    .line 133
    new-instance v0, Lcn/nubia/game/GameModeHelper;

    invoke-direct {v0}, Lcn/nubia/game/GameModeHelper;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcn/nubia/game/GameModeHelper$1;->create()Lcn/nubia/game/GameModeHelper;

    move-result-object v0

    return-object v0
.end method
