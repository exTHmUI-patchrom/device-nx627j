.class Landroid/hardware/radio/RadioManager$1;
.super Landroid/hardware/radio/IAnnouncementListener$Stub;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/radio/RadioManager;->addAnnouncementListener(Ljava/util/concurrent/Executor;Ljava/util/Set;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/radio/RadioManager;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Landroid/hardware/radio/Announcement$OnListUpdatedListener;


# direct methods
.method constructor <init>(Landroid/hardware/radio/RadioManager;Ljava/util/concurrent/Executor;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/radio/RadioManager;

    .line 1805
    iput-object p1, p0, Landroid/hardware/radio/RadioManager$1;->this$0:Landroid/hardware/radio/RadioManager;

    iput-object p2, p0, Landroid/hardware/radio/RadioManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/radio/RadioManager$1;->val$listener:Landroid/hardware/radio/Announcement$OnListUpdatedListener;

    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onListUpdated$0(Landroid/hardware/radio/Announcement$OnListUpdatedListener;Ljava/util/List;)V
    .locals 0
    .param p0, "listener"    # Landroid/hardware/radio/Announcement$OnListUpdatedListener;
    .param p1, "activeAnnouncements"    # Ljava/util/List;

    .line 1807
    invoke-interface {p0, p1}, Landroid/hardware/radio/Announcement$OnListUpdatedListener;->onListUpdated(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public onListUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/Announcement;",
            ">;)V"
        }
    .end annotation

    .line 1807
    .local p1, "activeAnnouncements":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/Announcement;>;"
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$1;->val$listener:Landroid/hardware/radio/Announcement$OnListUpdatedListener;

    new-instance v2, Landroid/hardware/radio/-$$Lambda$RadioManager$1$yOwq8CG0kiZcgKFclFSIrjag008;

    invoke-direct {v2, v1, p1}, Landroid/hardware/radio/-$$Lambda$RadioManager$1$yOwq8CG0kiZcgKFclFSIrjag008;-><init>(Landroid/hardware/radio/Announcement$OnListUpdatedListener;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1808
    return-void
.end method
