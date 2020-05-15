.class Lcn/nubia/server/presssensor/PressGestureSettings$1;
.super Landroid/database/ContentObserver;
.source "PressGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressGestureSettings;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressGestureSettings;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressGestureSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressGestureSettings;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureSettings$1;->this$0:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 52
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureSettings$1;->this$0:Lcn/nubia/server/presssensor/PressGestureSettings;

    invoke-static {v0}, Lcn/nubia/server/presssensor/PressGestureSettings;->access$000(Lcn/nubia/server/presssensor/PressGestureSettings;)V

    .line 53
    return-void
.end method
