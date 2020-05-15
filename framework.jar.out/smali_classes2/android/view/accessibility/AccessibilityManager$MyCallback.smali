.class final Landroid/view/accessibility/AccessibilityManager$MyCallback;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyCallback"
.end annotation


# static fields
.field public static final MSG_SET_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method private constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/accessibility/AccessibilityManager;
    .param p2, "x1"    # Landroid/view/accessibility/AccessibilityManager$1;

    .line 1236
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 1241
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1245
    .local v0, "state":I
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->access$000(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1246
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager$MyCallback;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->access$300(Landroid/view/accessibility/AccessibilityManager;I)V

    .line 1247
    monitor-exit v2

    .line 1250
    .end local v0    # "state":I
    :goto_0
    return v1

    .line 1247
    .restart local v0    # "state":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
