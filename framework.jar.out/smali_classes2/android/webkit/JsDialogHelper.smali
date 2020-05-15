.class public Landroid/webkit/JsDialogHelper;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/JsDialogHelper$PositiveListener;,
        Landroid/webkit/JsDialogHelper$CancelListener;
    }
.end annotation


# static fields
.field public static final ALERT:I = 0x1

.field public static final CONFIRM:I = 0x2

.field public static final PROMPT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "JsDialogHelper"

.field public static final UNLOAD:I = 0x4


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private final mResult:Landroid/webkit/JsPromptResult;

.field private final mType:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/JsPromptResult;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "type"    # I
    .param p3, "defaultValue"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 60
    iput-object p3, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 62
    iput p2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 63
    iput-object p5, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/webkit/JsPromptResult;Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/webkit/JsPromptResult;
    .param p2, "msg"    # Landroid/os/Message;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    .line 68
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 70
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    .line 71
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/JsDialogHelper;)Landroid/webkit/JsPromptResult;
    .locals 1
    .param p0, "x0"    # Landroid/webkit/JsDialogHelper;

    .line 41
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    return-object v0
.end method

.method private static canShowAlertDialog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 185
    instance-of v0, p0, Landroid/app/Activity;

    return v0
.end method

.method private getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    .line 162
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const v1, 0x10402b2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "alertUrl":Ljava/net/URL;
    const v2, 0x10402b1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 169
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 173
    .end local v1    # "alertUrl":Ljava/net/URL;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 175
    :goto_0
    return-object v0
.end method


# virtual methods
.method public invokeCallback(Landroid/webkit/WebChromeClient;Landroid/webkit/WebView;)Z
    .locals 7
    .param p1, "client"    # Landroid/webkit/WebChromeClient;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .line 75
    iget v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/webkit/JsDialogHelper;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 83
    :pswitch_1
    iget-object v3, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    iget-object v6, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    return v0

    .line 79
    :pswitch_2
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    .line 77
    :pswitch_3
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-static {p1}, Landroid/webkit/JsDialogHelper;->canShowAlertDialog(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "JsDialogHelper"

    const-string v1, "Cannot create a dialog, the WebView context is not an Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Landroid/webkit/JsDialogHelper;->mResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 93
    return-void

    .line 98
    :cond_0
    iget v0, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 99
    const v0, 0x10402b0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "title":Ljava/lang/String;
    const v1, 0x10402ad

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "displayMessage":Ljava/lang/String;
    const v3, 0x10402af

    .line 103
    .local v3, "positiveTextId":I
    const v4, 0x10402ae

    .local v4, "negativeTextId":I
    goto :goto_0

    .line 105
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "displayMessage":Ljava/lang/String;
    .end local v3    # "positiveTextId":I
    .end local v4    # "negativeTextId":I
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/JsDialogHelper;->getJsDialogTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0    # "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    .line 107
    .restart local v1    # "displayMessage":Ljava/lang/String;
    const v3, 0x104000a

    .line 108
    .restart local v3    # "positiveTextId":I
    const/high16 v4, 0x1040000

    .line 110
    .restart local v4    # "negativeTextId":I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    new-instance v6, Landroid/webkit/JsDialogHelper$CancelListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$1;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    iget v6, p0, Landroid/webkit/JsDialogHelper;->mType:I

    const/4 v8, 0x3

    if-eq v6, v8, :cond_2

    .line 114
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    new-instance v6, Landroid/webkit/JsDialogHelper$PositiveListener;

    invoke-direct {v6, p0, v7}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 117
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x1090077

    invoke-virtual {v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 119
    .local v6, "view":Landroid/view/View;
    const v8, 0x10204ae

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 120
    .local v8, "edit":Landroid/widget/EditText;
    iget-object v9, p0, Landroid/webkit/JsDialogHelper;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v9, Landroid/webkit/JsDialogHelper$PositiveListener;

    invoke-direct {v9, p0, v8}, Landroid/webkit/JsDialogHelper$PositiveListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v5, v3, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v9, 0x102000b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Landroid/webkit/JsDialogHelper;->mMessage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 125
    .end local v6    # "view":Landroid/view/View;
    .end local v8    # "edit":Landroid/widget/EditText;
    :goto_1
    iget v6, p0, Landroid/webkit/JsDialogHelper;->mType:I

    if-eq v6, v2, :cond_3

    .line 126
    new-instance v2, Landroid/webkit/JsDialogHelper$CancelListener;

    invoke-direct {v2, p0, v7}, Landroid/webkit/JsDialogHelper$CancelListener;-><init>(Landroid/webkit/JsDialogHelper;Landroid/webkit/JsDialogHelper$1;)V

    invoke-virtual {v5, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    :cond_3
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    return-void
.end method
