.class Landroid/service/dreams/DreamService$DreamServiceWrapper$4;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService$DreamServiceWrapper;->advanceRemoveView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/dreams/DreamService$DreamServiceWrapper;

    .line 1257
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$4;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1260
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$4;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iget-object v0, v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-virtual {v0}, Landroid/service/dreams/DreamService;->advanceRemoveView()V

    .line 1261
    return-void
.end method
