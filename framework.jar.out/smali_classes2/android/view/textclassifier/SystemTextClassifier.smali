.class public final Landroid/view/textclassifier/SystemTextClassifier;
.super Ljava/lang/Object;
.source "SystemTextClassifier.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;,
        Landroid/view/textclassifier/SystemTextClassifier$TextLinksCallback;,
        Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;,
        Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SystemTextClassifier"


# instance fields
.field private final mFallback:Landroid/view/textclassifier/TextClassifier;

.field private final mManagerService:Landroid/service/textclassifier/ITextClassifierService;

.field private final mPackageName:Ljava/lang/String;

.field private mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final mSettings:Landroid/view/textclassifier/TextClassificationConstants;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/view/textclassifier/TextClassificationConstants;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "textclassification"

    .line 56
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/service/textclassifier/ITextClassifierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    .line 57
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationConstants;

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 58
    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mPackageName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .locals 3
    .param p1, "request"    # Landroid/view/textclassifier/TextClassification$Request;

    .line 90
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 93
    :try_start_0
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;-><init>(Landroid/view/textclassifier/SystemTextClassifier$1;)V

    .line 94
    .local v0, "callback":Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassificationCallback;)V

    .line 95
    iget-object v1, v0, Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-virtual {v1}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v1, "classification":Landroid/view/textclassifier/TextClassification;
    if-eqz v1, :cond_0

    .line 97
    return-object v1

    .line 101
    .end local v0    # "callback":Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;
    .end local v1    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_0
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemTextClassifier"

    const-string v2, "Error classifying text. Using fallback."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v0, v1}, Landroid/service/textclassifier/ITextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemTextClassifier"

    const-string v2, "Error destroying classification session."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 3
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 111
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 114
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->isLegacyFallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifier$Utils;->generateLegacyLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextLinks$Request;->setCallingPackageName(Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$TextLinksCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/textclassifier/SystemTextClassifier$TextLinksCallback;-><init>(Landroid/view/textclassifier/SystemTextClassifier$1;)V

    .line 121
    .local v0, "callback":Landroid/view/textclassifier/SystemTextClassifier$TextLinksCallback;
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextLinksCallback;)V

    .line 122
    iget-object v1, v0, Landroid/view/textclassifier/SystemTextClassifier$TextLinksCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-virtual {v1}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextLinks;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v1, "links":Landroid/view/textclassifier/TextLinks;
    if-eqz v1, :cond_1

    .line 124
    return-object v1

    .line 128
    .end local v0    # "callback":Landroid/view/textclassifier/SystemTextClassifier$TextLinksCallback;
    .end local v1    # "links":Landroid/view/textclassifier/TextLinks;
    :cond_1
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemTextClassifier"

    const-string v2, "Error generating links. Using fallback."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public getMaxGenerateLinksTextLength()I
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v0

    return v0
.end method

.method initializeRemoteSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 3
    .param p1, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 174
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v0, p1, v1}, Landroid/service/textclassifier/ITextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemTextClassifier"

    const-string v2, "Error starting a new classification session."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 134
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v0, v1, p1}, Landroid/service/textclassifier/ITextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SystemTextClassifier"

    const-string v2, "Error reporting selection event."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .locals 3
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 69
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 72
    :try_start_0
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;-><init>(Landroid/view/textclassifier/SystemTextClassifier$1;)V

    .line 73
    .local v0, "callback":Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextSelectionCallback;)V

    .line 74
    iget-object v1, v0, Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-virtual {v1}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextSelection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v1, "selection":Landroid/view/textclassifier/TextSelection;
    if-eqz v1, :cond_0

    .line 76
    return-object v1

    .line 80
    .end local v0    # "callback":Landroid/view/textclassifier/SystemTextClassifier$TextSelectionCallback;
    .end local v1    # "selection":Landroid/view/textclassifier/TextSelection;
    :cond_0
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemTextClassifier"

    const-string v2, "Error suggesting selection for text. Using fallback."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
