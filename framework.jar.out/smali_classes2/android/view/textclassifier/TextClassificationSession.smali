.class final Landroid/view/textclassifier/TextClassificationSession;
.super Ljava/lang/Object;
.source "TextClassificationSession.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;
    }
.end annotation


# static fields
.field static final DEBUG_LOG_ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationSession"


# instance fields
.field private final mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

.field private final mDelegate:Landroid/view/textclassifier/TextClassifier;

.field private mDestroyed:Z

.field private final mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

.field private final mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method constructor <init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V
    .locals 3
    .param p1, "context"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "delegate"    # Landroid/view/textclassifier/TextClassifier;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 42
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    .line 43
    new-instance v0, Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 44
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    .line 45
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->initializeRemoteSession()V

    .line 46
    return-void
.end method

.method private checkDestroyed()V
    .locals 2

    .line 100
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This TextClassification session has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeRemoteSession()V
    .locals 3

    .line 55
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    instance-of v0, v0, Landroid/view/textclassifier/SystemTextClassifier;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    check-cast v0, Landroid/view/textclassifier/SystemTextClassifier;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationSession;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationSession;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier;->initializeRemoteSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextClassification$Request;

    .line 63
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyed()V

    .line 64
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->endSession()V

    .line 85
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->destroy()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    .line 87
    return-void
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 69
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyed()V

    .line 70
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDestroyed:Z

    return v0
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 75
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyed()V

    .line 76
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mEventHelper:Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassificationSession$SelectionEventHelper;->sanitizeEvent(Landroid/view/textclassifier/SelectionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    .line 80
    :cond_0
    return-void
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 1
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 50
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationSession;->checkDestroyed()V

    .line 51
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSession;->mDelegate:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
