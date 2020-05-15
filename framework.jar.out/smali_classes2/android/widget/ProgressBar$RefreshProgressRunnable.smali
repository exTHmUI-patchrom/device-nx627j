.class Landroid/widget/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1239
    iput-object p1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ProgressBar;
    .param p2, "x1"    # Landroid/widget/ProgressBar$1;

    .line 1239
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1241
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    monitor-enter v0

    .line 1242
    :try_start_0
    iget-object v1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v1}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1243
    .local v1, "count":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1244
    iget-object v4, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v4}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar$RefreshData;

    .line 1245
    .local v4, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v5, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    iget v6, v4, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v7, v4, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v8, v4, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v9, 0x1

    iget-boolean v10, v4, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    invoke-static/range {v5 .. v10}, Landroid/widget/ProgressBar;->access$200(Landroid/widget/ProgressBar;IIZZZ)V

    .line 1246
    invoke-virtual {v4}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 1243
    .end local v4    # "rd":Landroid/widget/ProgressBar$RefreshData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1248
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1249
    iget-object v3, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v3, v2}, Landroid/widget/ProgressBar;->access$302(Landroid/widget/ProgressBar;Z)Z

    .line 1250
    .end local v1    # "count":I
    monitor-exit v0

    .line 1251
    return-void

    .line 1250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
