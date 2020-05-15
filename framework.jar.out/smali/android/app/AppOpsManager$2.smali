.class Landroid/app/AppOpsManager$2;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppOpsManager;

.field final synthetic val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;


# direct methods
.method constructor <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AppOpsManager;

    .line 2233
    iput-object p1, p0, Landroid/app/AppOpsManager$2;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opActiveChanged(IILjava/lang/String;Z)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 2236
    iget-object v0, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(IILjava/lang/String;Z)V

    .line 2237
    return-void
.end method
