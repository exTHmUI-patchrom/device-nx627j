.class Lcn/nubia/game/GameKeysHelper$1;
.super Landroid/util/Singleton;
.source "GameKeysHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/game/GameKeysHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcn/nubia/game/GameKeysHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcn/nubia/game/GameKeysHelper;
    .locals 1

    .line 49
    new-instance v0, Lcn/nubia/game/GameKeysHelper;

    invoke-direct {v0}, Lcn/nubia/game/GameKeysHelper;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcn/nubia/game/GameKeysHelper$1;->create()Lcn/nubia/game/GameKeysHelper;

    move-result-object v0

    return-object v0
.end method
