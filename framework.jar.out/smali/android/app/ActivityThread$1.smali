.class Landroid/app/ActivityThread$1;
.super Ljava/lang/Thread;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->preLoadWebView(Landroid/app/ContextImpl;Ljava/lang/String;Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$app:Landroid/app/Application;

.field final synthetic val$appContext:Landroid/app/ContextImpl;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/app/ContextImpl;Ljava/lang/String;Landroid/app/Application;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .line 6110
    iput-object p1, p0, Landroid/app/ActivityThread$1;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$1;->val$appContext:Landroid/app/ContextImpl;

    iput-object p3, p0, Landroid/app/ActivityThread$1;->val$processName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/ActivityThread$1;->val$app:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 6113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/ActivityThread$1;->val$appContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ActivityThread$1;->val$processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6115
    .local v0, "preloadFlagFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6116
    .local v1, "flagFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6117
    return-void

    .line 6120
    :cond_0
    invoke-static {v1}, Landroid/app/ActivityThread;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 6121
    .local v2, "flagString":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6123
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Landroid/app/ActivityThread;->sDataDirectorySuffix:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6124
    invoke-static {v3}, Landroid/webkit/WebViewFactory;->setPreLoadingProviderInitialState(Z)V

    .line 6125
    sget-object v4, Landroid/app/ActivityThread;->sDataDirectorySuffix:Ljava/lang/String;

    invoke-static {v4}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 6126
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/webkit/WebViewFactory;->setPreLoadingProviderInitialState(Z)V

    .line 6128
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityThread$1;->val$app:Landroid/app/Application;

    invoke-static {v4}, Landroid/webkit/WebViewFactory;->getProvider_nubia(Landroid/app/Application;)Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6132
    goto :goto_0

    .line 6129
    :catch_0
    move-exception v4

    .line 6130
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/webkit/WebViewFactory;->setPreloadFlag(Z)V

    .line 6131
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 6134
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method
