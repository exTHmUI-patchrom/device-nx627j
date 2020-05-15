.class public Landroid/security/ConfirmationPrompt;
.super Ljava/lang/Object;
.source "ConfirmationPrompt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/ConfirmationPrompt$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfirmationPrompt"

.field private static final UI_OPTION_ACCESSIBILITY_INVERTED_FLAG:I = 0x1

.field private static final UI_OPTION_ACCESSIBILITY_MAGNIFIED_FLAG:I = 0x2


# instance fields
.field private mCallback:Landroid/security/ConfirmationCallback;

.field private final mCallbackBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mExtraData:[B

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPromptText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;[B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "promptText"    # Ljava/lang/CharSequence;
    .param p3, "extraData"    # [B

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/ConfirmationPrompt;->mKeyStore:Landroid/security/KeyStore;

    .line 122
    new-instance v0, Landroid/security/ConfirmationPrompt$1;

    invoke-direct {v0, p0}, Landroid/security/ConfirmationPrompt$1;-><init>(Landroid/security/ConfirmationPrompt;)V

    iput-object v0, p0, Landroid/security/ConfirmationPrompt;->mCallbackBinder:Landroid/os/IBinder;

    .line 205
    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Landroid/security/ConfirmationPrompt;->mPromptText:Ljava/lang/CharSequence;

    .line 207
    iput-object p3, p0, Landroid/security/ConfirmationPrompt;->mExtraData:[B

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;[BLandroid/security/ConfirmationPrompt$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # [B
    .param p4, "x3"    # Landroid/security/ConfirmationPrompt$1;

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/security/ConfirmationPrompt;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[B)V

    return-void
.end method

.method static synthetic access$000(Landroid/security/ConfirmationPrompt;)Landroid/security/ConfirmationCallback;
    .locals 1
    .param p0, "x0"    # Landroid/security/ConfirmationPrompt;

    .line 85
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    return-object v0
.end method

.method static synthetic access$002(Landroid/security/ConfirmationPrompt;Landroid/security/ConfirmationCallback;)Landroid/security/ConfirmationCallback;
    .locals 0
    .param p0, "x0"    # Landroid/security/ConfirmationPrompt;
    .param p1, "x1"    # Landroid/security/ConfirmationCallback;

    .line 85
    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    return-object p1
.end method

.method static synthetic access$100(Landroid/security/ConfirmationPrompt;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Landroid/security/ConfirmationPrompt;

    .line 85
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$102(Landroid/security/ConfirmationPrompt;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0
    .param p0, "x0"    # Landroid/security/ConfirmationPrompt;
    .param p1, "x1"    # Ljava/util/concurrent/Executor;

    .line 85
    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method static synthetic access$200(Landroid/security/ConfirmationPrompt;I[BLandroid/security/ConfirmationCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/security/ConfirmationPrompt;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # Landroid/security/ConfirmationCallback;

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/security/ConfirmationPrompt;->doCallback(I[BLandroid/security/ConfirmationCallback;)V

    return-void
.end method

.method private doCallback(I[BLandroid/security/ConfirmationCallback;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "dataThatWasConfirmed"    # [B
    .param p3, "callback"    # Landroid/security/ConfirmationCallback;

    .line 98
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from onConfirmtionPromptCompleted() callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/security/ConfirmationCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :pswitch_0
    invoke-virtual {p3}, Landroid/security/ConfirmationCallback;->onCanceled()V

    .line 109
    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p3}, Landroid/security/ConfirmationCallback;->onDismissed()V

    .line 105
    goto :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {p3, p2}, Landroid/security/ConfirmationCallback;->onConfirmed([B)V

    .line 101
    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "System error returned by ConfirmationUI."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/security/ConfirmationCallback;->onError(Ljava/lang/Throwable;)V

    .line 113
    nop

    .line 120
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUiOptionsAsFlags()I
    .locals 8

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "uiOptionsAsFlags":I
    :try_start_0
    iget-object v1, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 217
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 219
    .local v2, "inversionEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 220
    or-int/lit8 v0, v0, 0x1

    .line 222
    :cond_0
    const-string v3, "font_scale"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .local v3, "fontScale":F
    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 225
    or-int/lit8 v0, v0, 0x2

    .line 229
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "inversionEnabled":I
    .end local v3    # "fontScale":F
    :cond_1
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ConfirmationPrompt"

    const-string v3, "Unexpected SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    return v0
.end method

.method private static isAccessibilityServiceRunning(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "serviceRunning":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 237
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .local v2, "a11yEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 245
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "a11yEnabled":I
    :cond_0
    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ConfirmationPrompt"

    const-string v3, "Unexpected SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 246
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    return v0
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 334
    invoke-static {p0}, Landroid/security/ConfirmationPrompt;->isAccessibilityServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->isConfirmationPromptSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelPrompt()V
    .locals 3

    .line 313
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/ConfirmationPrompt;->mCallbackBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->cancelConfirmationPrompt(Landroid/os/IBinder;)I

    move-result v0

    .line 314
    .local v0, "responseCode":I
    if-nez v0, :cond_0

    .line 315
    return-void

    .line 316
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 317
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 320
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from cancelConfirmationPrompt() call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfirmationPrompt"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public presentPrompt(Ljava/util/concurrent/Executor;Landroid/security/ConfirmationCallback;)V
    .locals 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/security/ConfirmationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/ConfirmationAlreadyPresentingException;,
            Landroid/security/ConfirmationNotAvailableException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    if-nez v0, :cond_5

    .line 271
    iget-object v0, p0, Landroid/security/ConfirmationPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/security/ConfirmationPrompt;->isAccessibilityServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 274
    iput-object p2, p0, Landroid/security/ConfirmationPrompt;->mCallback:Landroid/security/ConfirmationCallback;

    .line 275
    iput-object p1, p0, Landroid/security/ConfirmationPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 277
    invoke-direct {p0}, Landroid/security/ConfirmationPrompt;->getUiOptionsAsFlags()I

    move-result v0

    .line 278
    .local v0, "uiOptionsAsFlags":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "locale":Ljava/lang/String;
    iget-object v1, p0, Landroid/security/ConfirmationPrompt;->mKeyStore:Landroid/security/KeyStore;

    iget-object v2, p0, Landroid/security/ConfirmationPrompt;->mCallbackBinder:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/security/ConfirmationPrompt;->mPromptText:Ljava/lang/CharSequence;

    .line 280
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/security/ConfirmationPrompt;->mExtraData:[B

    .line 279
    move-object v5, v7

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v1

    .line 281
    .local v1, "responseCode":I
    if-eqz v1, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected responseCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from presentConfirmationPrompt() call."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfirmationPrompt"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 292
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 289
    :cond_1
    new-instance v2, Landroid/security/ConfirmationNotAvailableException;

    invoke-direct {v2}, Landroid/security/ConfirmationNotAvailableException;-><init>()V

    throw v2

    .line 286
    :cond_2
    new-instance v2, Landroid/security/ConfirmationAlreadyPresentingException;

    invoke-direct {v2}, Landroid/security/ConfirmationAlreadyPresentingException;-><init>()V

    throw v2

    .line 283
    :cond_3
    return-void

    .line 272
    .end local v0    # "uiOptionsAsFlags":I
    .end local v1    # "responseCode":I
    .end local v7    # "locale":Ljava/lang/String;
    :cond_4
    new-instance v0, Landroid/security/ConfirmationNotAvailableException;

    invoke-direct {v0}, Landroid/security/ConfirmationNotAvailableException;-><init>()V

    throw v0

    .line 269
    :cond_5
    new-instance v0, Landroid/security/ConfirmationAlreadyPresentingException;

    invoke-direct {v0}, Landroid/security/ConfirmationAlreadyPresentingException;-><init>()V

    throw v0
.end method
