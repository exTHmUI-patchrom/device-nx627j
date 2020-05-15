.class public final Landroid/view/textclassifier/TextClassificationManager;
.super Ljava/lang/Object;
.source "TextClassificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

.field private mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSettings:Landroid/view/textclassifier/TextClassificationConstants;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

.field private mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$JIaezIJbMig_-kVzN6oArzkTsJE;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/-$$Lambda$TextClassificationManager$JIaezIJbMig_-kVzN6oArzkTsJE;-><init>(Landroid/view/textclassifier/TextClassificationManager;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 66
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 68
    new-instance v0, Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;-><init>(Landroid/view/textclassifier/TextClassificationManager;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettingsObserver:Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

    .line 69
    return-void
.end method

.method static synthetic access$000(Landroid/view/textclassifier/TextClassificationManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/textclassifier/TextClassificationManager;

    .line 38
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->invalidate()V

    return-void
.end method

.method private getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 5

    .line 216
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_1

    .line 218
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->isLocalTextClassifierEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Landroid/view/textclassifier/TextClassifierImpl;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    .line 220
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v3

    sget-object v4, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    invoke-direct {v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassifierImpl;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/TextClassifier;)V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    goto :goto_0

    .line 222
    :cond_0
    const-string v1, "TextClassificationManager"

    const-string v2, "Local TextClassifier disabled"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 226
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    monitor-exit v0

    return-object v1

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSettings()Landroid/view/textclassifier/TextClassificationConstants;
    .locals 3

    .line 120
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    if-nez v1, :cond_0

    .line 122
    nop

    .line 123
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "text_classifier_constants"

    .line 122
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationConstants;->loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 126
    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 251
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 254
    .local v0, "tcm":Landroid/view/textclassifier/TextClassificationManager;
    if-eqz v0, :cond_0

    .line 255
    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    return-object v1

    .line 257
    :cond_0
    nop

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "text_classifier_constants"

    .line 257
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationConstants;->loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    return-object v1
.end method

.method private getSystemTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 4

    .line 199
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->isSystemTextClassifierEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 202
    :try_start_1
    new-instance v1, Landroid/view/textclassifier/SystemTextClassifier;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/textclassifier/SystemTextClassifier;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;)V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 203
    const-string v1, "TextClassificationManager"

    const-string v2, "Initialized SystemTextClassifier"

    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_2
    const-string v2, "TextClassificationManager"

    const-string v3, "Could not initialize SystemTextClassifier"

    invoke-static {v2, v3, v1}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    return-object v0

    .line 212
    :cond_1
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v0

    .line 208
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private invalidate()V
    .locals 2

    .line 236
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 238
    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mLocalTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 239
    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSystemTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSystemTextClassifierEnabled()Z
    .locals 1

    .line 231
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSystemTextClassifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    .line 232
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Landroid/view/textclassifier/TextClassificationManager;Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .locals 2
    .param p1, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 44
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession;

    .line 45
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/view/textclassifier/TextClassificationSession;-><init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .locals 2
    .param p1, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 150
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 152
    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassificationSessionFactory;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    .line 153
    .local v0, "textClassifier":Landroid/view/textclassifier/TextClassifier;
    const-string v1, "Session Factory should never return null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-object v0
.end method

.method public createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)Landroid/view/textclassifier/TextClassifier;
    .locals 1
    .param p1, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .line 163
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession;

    invoke-direct {v0, p1, p2}, Landroid/view/textclassifier/TextClassificationSession;-><init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettingsObserver:Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettingsObserver:Landroid/view/textclassifier/TextClassificationManager$SettingsObserver;

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    .line 244
    :goto_0
    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 80
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

    monitor-exit v0

    return-object v1

    .line 83
    :cond_0
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->isSystemTextClassifierEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSystemTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 86
    :cond_1
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;
    .locals 1
    .param p1, "type"    # I

    .line 111
    if-eqz p1, :cond_0

    .line 115
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSystemTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public setTextClassificationSessionFactory(Landroid/view/textclassifier/TextClassificationSessionFactory;)V
    .locals 2
    .param p1, "factory"    # Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 176
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    if-eqz p1, :cond_0

    .line 178
    :try_start_0
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 180
    :cond_0
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 182
    :goto_0
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2
    .param p1, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .line 97
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
