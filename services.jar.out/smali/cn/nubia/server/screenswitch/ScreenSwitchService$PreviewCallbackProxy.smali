.class Lcn/nubia/server/screenswitch/ScreenSwitchService$PreviewCallbackProxy;
.super Ljava/lang/Object;
.source "ScreenSwitchService.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/screenswitch/ScreenSwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewCallbackProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$PreviewCallbackProxy;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;Lcn/nubia/server/screenswitch/ScreenSwitchService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/screenswitch/ScreenSwitchService;
    .param p2, "x1"    # Lcn/nubia/server/screenswitch/ScreenSwitchService$1;

    .line 604
    invoke-direct {p0, p1}, Lcn/nubia/server/screenswitch/ScreenSwitchService$PreviewCallbackProxy;-><init>(Lcn/nubia/server/screenswitch/ScreenSwitchService;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 607
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPreviewStarted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcn/nubia/server/screenswitch/ScreenSwitchService$PreviewCallbackProxy;->this$0:Lcn/nubia/server/screenswitch/ScreenSwitchService;

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/nubia/server/screenswitch/ScreenSwitchService;->access$5200(Lcn/nubia/server/screenswitch/ScreenSwitchService;Ljava/lang/String;)V

    .line 609
    return-object v1

    .line 610
    :cond_0
    const-string v0, "hashCode"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 612
    :cond_1
    const-string v0, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    aget-object v0, p3, v2

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 615
    :cond_3
    return-object v1
.end method
