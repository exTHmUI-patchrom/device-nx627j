.class public final Landroid/view/textservice/TextServicesManager;
.super Ljava/lang/Object;
.source "TextServicesManager.java"


# static fields
.field private static final DBG:Z = false

.field public static final DISABLE_PER_PROFILE_SPELL_CHECKER:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/view/textservice/TextServicesManager;


# instance fields
.field private final mService:Lcom/android/internal/textservice/ITextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/TextServicesManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string/jumbo v0, "textservices"

    .line 81
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ITextServicesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    .line 82
    return-void
.end method

.method public static getInstance()Landroid/view/textservice/TextServicesManager;
    .locals 3

    .line 89
    const-class v0, Landroid/view/textservice/TextServicesManager;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 92
    :try_start_1
    new-instance v1, Landroid/view/textservice/TextServicesManager;

    invoke-direct {v1}, Landroid/view/textservice/TextServicesManager;-><init>()V

    sput-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 97
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_0
    :goto_0
    sget-object v1, Landroid/view/textservice/TextServicesManager;->sInstance:Landroid/view/textservice/TextServicesManager;

    monitor-exit v0

    return-object v1

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;

    .line 105
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 106
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 107
    return-object p0

    .line 109
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 2
    .param p1, "allowImplicitlySelectedSubtype"    # Z

    .line 226
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v0}, Lcom/android/internal/textservice/ITextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v0, "retval":[Landroid/view/textservice/SpellCheckerInfo;
    return-object v0

    .line 202
    .end local v0    # "retval":[Landroid/view/textservice/SpellCheckerInfo;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v0}, Lcom/android/internal/textservice/ITextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
    .param p4, "referToSpellCheckerLanguageSettings"    # Z

    .line 129
    if-eqz p3, :cond_c

    .line 132
    if-nez p4, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Locale should not be null if you don\'t refer settings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    return-object v0

    .line 143
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-interface {v1, v0}, Lcom/android/internal/textservice/ITextServicesManager;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    nop

    .line 145
    nop

    .line 147
    if-nez v1, :cond_3

    .line 148
    return-object v0

    .line 150
    :cond_3
    const/4 v2, 0x0

    .line 151
    .local v2, "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v3, 0x2

    if-eqz p4, :cond_7

    .line 152
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    .line 153
    if-nez v2, :cond_4

    .line 154
    return-object v0

    .line 156
    :cond_4
    if-eqz p2, :cond_a

    .line 157
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "subtypeLocale":Ljava/lang/String;
    invoke-static {v4}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "subtypeLanguage":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v3, :cond_6

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 162
    .end local v4    # "subtypeLocale":Ljava/lang/String;
    .end local v5    # "subtypeLanguage":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 160
    .restart local v4    # "subtypeLocale":Ljava/lang/String;
    .restart local v5    # "subtypeLanguage":Ljava/lang/String;
    :cond_6
    :goto_1
    return-object v0

    .line 164
    .end local v4    # "subtypeLocale":Ljava/lang/String;
    .end local v5    # "subtypeLanguage":Ljava/lang/String;
    :cond_7
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "localeStr":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 166
    invoke-virtual {v1, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v6

    .line 167
    .local v6, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "tempSubtypeLocale":Ljava/lang/String;
    invoke-static {v7}, Landroid/view/textservice/TextServicesManager;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "tempSubtypeLanguage":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 170
    move-object v2, v6

    .line 171
    goto :goto_3

    .line 172
    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v3, :cond_9

    .line 173
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 174
    move-object v2, v6

    .line 165
    .end local v6    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v7    # "tempSubtypeLocale":Ljava/lang/String;
    .end local v8    # "tempSubtypeLanguage":Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 178
    .end local v4    # "localeStr":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_a
    :goto_3
    if-nez v2, :cond_b

    .line 179
    return-object v0

    .line 181
    :cond_b
    new-instance v0, Landroid/view/textservice/SpellCheckerSession;

    iget-object v3, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-direct {v0, v1, v3, p3}, Landroid/view/textservice/SpellCheckerSession;-><init>(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/internal/textservice/ITextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;)V

    .line 183
    .local v0, "session":Landroid/view/textservice/SpellCheckerSession;
    :try_start_1
    iget-object v3, p0, Landroid/view/textservice/TextServicesManager;->mService:Lcom/android/internal/textservice/ITextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;

    move-result-object v6

    .line 185
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-result-object v7

    .line 183
    move-object v8, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/textservice/ITextServicesManager;->getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    nop

    .line 189
    return-object v0

    .line 186
    :catch_0
    move-exception v3

    .line 187
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 144
    .end local v0    # "session":Landroid/view/textservice/SpellCheckerSession;
    .end local v1    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v2    # "subtypeInUse":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0

    .line 130
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
