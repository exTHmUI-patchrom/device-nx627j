.class Lcom/android/server/am/ActivityManagerService$35;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 30496
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$35;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 30499
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$4202(Z)Z

    .line 30500
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$4302(Z)Z

    .line 30501
    return-void
.end method
