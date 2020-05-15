.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardTemplateParams"
.end annotation


# instance fields
.field ambient:Z

.field hasProgress:Z

.field headerTextSecondary:Ljava/lang/CharSequence;

.field hideLargeIcon:Z

.field hideReplyIcon:Z

.field maxRemoteInputHistory:I

.field text:Ljava/lang/CharSequence;

.field title:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9813
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    .line 9814
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    .line 9818
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Notification$1;

    .line 9812
    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method final ambient(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 2
    .param p1, "ambient"    # Z

    .line 9863
    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "must set ambient before text"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 9864
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    .line 9865
    return-object p0
.end method

.method final fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .locals 3
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .line 9869
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 9870
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-static {p1, v1, v2}, Landroid/app/Notification$Builder;->access$4500(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 9873
    const-string v1, "android.bigText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 9874
    .local v1, "text":Ljava/lang/CharSequence;
    iget-boolean v2, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9875
    :cond_0
    const-string v2, "android.text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 9877
    :cond_1
    iget-boolean v2, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-static {p1, v1, v2}, Landroid/app/Notification$Builder;->access$4500(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 9878
    return-object p0
.end method

.method final hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hasProgress"    # Z

    .line 9833
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    .line 9834
    return-object p0
.end method

.method final headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 9848
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    .line 9849
    return-object p0
.end method

.method final hideLargeIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideLargeIcon"    # Z

    .line 9853
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->hideLargeIcon:Z

    .line 9854
    return-object p0
.end method

.method final hideReplyIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "hideReplyIcon"    # Z

    .line 9858
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->hideReplyIcon:Z

    .line 9859
    return-object p0
.end method

.method final reset()Landroid/app/Notification$StandardTemplateParams;
    .locals 1

    .line 9823
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    .line 9824
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    .line 9825
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 9826
    iput-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 9827
    iput-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    .line 9828
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 9829
    return-object p0
.end method

.method public setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "maxRemoteInputHistory"    # I

    .line 9887
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 9888
    return-object p0
.end method

.method final text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 9843
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    .line 9844
    return-object p0
.end method

.method final title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 9838
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 9839
    return-object p0
.end method
