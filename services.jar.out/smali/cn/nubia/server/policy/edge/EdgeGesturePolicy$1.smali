.class Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;
.super Ljava/lang/Object;
.source "EdgeGesturePolicy.java"

# interfaces
.implements Lcn/nubia/server/policy/edge/GestureSettingsListener$OnGestureEnableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/EdgeGesturePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .line 44
    iput-object p1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->access$000(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/edgegesture/EdgeGestureDetector;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x1000

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x3000

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x4000

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x5000

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x2000

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x6000

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    .line 48
    invoke-virtual {v0, v1, v2}, Lcn/nubia/edgegesture/EdgeGestureDetector;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/OnEdgeGestureListener;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/EdgeGesturePolicy;->access$000(Lcn/nubia/server/policy/edge/EdgeGesturePolicy;)Lcn/nubia/edgegesture/EdgeGestureDetector;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/policy/edge/EdgeGesturePolicy$1;->this$0:Lcn/nubia/server/policy/edge/EdgeGesturePolicy;

    invoke-virtual {v0, v1}, Lcn/nubia/edgegesture/EdgeGestureDetector;->unDetect(Lcn/nubia/edgegesture/OnEdgeGestureListener;)V

    .line 59
    :goto_0
    return-void
.end method
