.class public final Landroid/view/inputmethod/InputConnectionInspector;
.super Ljava/lang/Object;
.source "InputConnectionInspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputConnectionInspector$MissingMethodFlags;
    }
.end annotation


# static fields
.field private static final sMissingMethodsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I
    .locals 2
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .line 96
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 97
    return v0

    .line 100
    :cond_0
    instance-of v1, p0, Landroid/view/inputmethod/BaseInputConnection;

    if-eqz v1, :cond_1

    .line 101
    return v0

    .line 104
    :cond_1
    instance-of v0, p0, Landroid/view/inputmethod/InputConnectionWrapper;

    if-eqz v0, :cond_2

    .line 105
    move-object v0, p0

    check-cast v0, Landroid/view/inputmethod/InputConnectionWrapper;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputConnectionWrapper;->getMissingMethodFlags()I

    move-result v0

    return v0

    .line 107
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsInternal(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static getMissingMethodFlagsAsString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 222
    .local v1, "isEmpty":Z
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    .line 223
    const-string v2, "getSelectedText(int)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/4 v1, 0x0

    .line 226
    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    .line 227
    if-nez v1, :cond_1

    .line 228
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_1
    const-string/jumbo v2, "setComposingRegion(int, int)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const/4 v1, 0x0

    .line 233
    :cond_2
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_4

    .line 234
    if-nez v1, :cond_3

    .line 235
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_3
    const-string v2, "commitCorrection(CorrectionInfo)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/4 v1, 0x0

    .line 240
    :cond_4
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_6

    .line 241
    if-nez v1, :cond_5

    .line 242
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_5
    const-string/jumbo v2, "requestCursorUpdate(int)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const/4 v1, 0x0

    .line 247
    :cond_6
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_8

    .line 248
    if-nez v1, :cond_7

    .line 249
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_7
    const-string v2, "deleteSurroundingTextInCodePoints(int, int)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/4 v1, 0x0

    .line 254
    :cond_8
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_a

    .line 255
    if-nez v1, :cond_9

    .line 256
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_9
    const-string v2, "getHandler()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_a
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_c

    .line 261
    if-nez v1, :cond_b

    .line 262
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_b
    const-string v2, "closeConnection()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_c
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_e

    .line 267
    if-nez v1, :cond_d

    .line 268
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_d
    const-string v2, "commitContent(InputContentInfo, Bundle)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMissingMethodFlagsInternal(Ljava/lang/Class;)I
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 112
    sget-object v0, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    .local v0, "cachedFlags":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 116
    :cond_0
    const/4 v1, 0x0

    .line 117
    .local v1, "flags":I
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetSelectedText(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    or-int/lit8 v1, v1, 0x1

    .line 120
    :cond_1
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasSetComposingRegion(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    or-int/lit8 v1, v1, 0x2

    .line 123
    :cond_2
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitCorrection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 124
    or-int/lit8 v1, v1, 0x4

    .line 126
    :cond_3
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasRequestCursorUpdate(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 127
    or-int/lit8 v1, v1, 0x8

    .line 129
    :cond_4
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 130
    or-int/lit8 v1, v1, 0x10

    .line 132
    :cond_5
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasGetHandler(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 133
    or-int/lit8 v1, v1, 0x20

    .line 135
    :cond_6
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCloseConnection(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 136
    or-int/lit8 v1, v1, 0x40

    .line 138
    :cond_7
    invoke-static {p0}, Landroid/view/inputmethod/InputConnectionInspector;->hasCommitContent(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 139
    or-int/lit16 v1, v1, 0x80

    .line 141
    :cond_8
    sget-object v2, Landroid/view/inputmethod/InputConnectionInspector;->sMissingMethodsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return v1
.end method

.method private static hasCloseConnection(Ljava/lang/Class;)Z
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 202
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "closeConnection"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 203
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v2, 0x1

    return v0

    .line 204
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private static hasCommitContent(Ljava/lang/Class;)Z
    .locals 6
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 211
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "commitContent"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/view/inputmethod/InputContentInfo;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 213
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v2, 0x1

    return v0

    .line 214
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private static hasCommitCorrection(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 165
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "commitCorrection"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/inputmethod/CorrectionInfo;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 166
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v3, 0x1

    return v0

    .line 167
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private static hasDeleteSurroundingTextInCodePoints(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 183
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "deleteSurroundingTextInCodePoints"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 185
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v2, 0x1

    return v0

    .line 186
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private static hasGetHandler(Ljava/lang/Class;)Z
    .locals 3
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 193
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getHandler"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 194
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v2, 0x1

    return v0

    .line 195
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private static hasGetSelectedText(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 147
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getSelectedText"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 148
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v3, 0x1

    return v0

    .line 149
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private static hasRequestCursorUpdate(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 174
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "requestCursorUpdates"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 175
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v3, 0x1

    return v0

    .line 176
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private static hasSetComposingRegion(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 156
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "setComposingRegion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 157
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v2, 0x1

    return v0

    .line 158
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method
