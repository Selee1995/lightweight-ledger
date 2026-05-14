.class public Lcom/coderpage/mine/persistence/document/DocumentManager;
.super Ljava/lang/Object;
.source "DocumentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/persistence/document/DocumentManager$SaveOutStream;,
        Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "executor"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private deleteIfExist(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, "external"

    .line 190
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 192
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    .line 193
    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v2, v8

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-direct {p0, v2}, Lcom/coderpage/mine/persistence/document/DocumentManager;->joinPathRelative([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    .line 194
    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v8

    .line 196
    iget-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "relative_path = ? AND _display_name = ?"

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return v7

    .line 201
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v8, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_id"

    .line 202
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 203
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 204
    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 206
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_2

    .line 208
    iget-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v8, :cond_2

    const/4 v7, 0x1

    :cond_2
    return v7
.end method

.method private varargs joinPath(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "relative",
            "paths"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 322
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_3

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_1

    .line 329
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_1
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p2, v3

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    sget-char v7, Ljava/io/File;->separatorChar:C

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 334
    :goto_1
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v5, :cond_3

    if-nez v7, :cond_3

    .line 336
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 340
    :cond_4
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    sget-char p2, Ljava/io/File;->separatorChar:C

    if-ne p1, p2, :cond_6

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 347
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_3
    const-string p1, ""

    return-object p1
.end method

.method private varargs joinPathAbsolute([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    const/4 v0, 0x0

    .line 318
    invoke-direct {p0, v0, p1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->joinPath(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private varargs joinPathRelative([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    const/4 v0, 0x1

    .line 314
    invoke-direct {p0, v0, p1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->joinPath(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$listFile$2(Lcom/coderpage/base/common/Callback;Ljava/util/List;)V
    .locals 0

    .line 216
    invoke-interface {p0, p1}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$listFileBeforeQ$5(Ljava/util/List;IILjava/io/File;)V
    .locals 0

    .line 269
    new-instance p1, Lcom/coderpage/mine/persistence/document/DocumentFile;

    invoke-direct {p1, p3}, Lcom/coderpage/mine/persistence/document/DocumentFile;-><init>(Ljava/io/File;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private listFileBeforeQ(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dirPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;"
        }
    .end annotation

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x13

    if-lt v0, v4, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 258
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p1, v0, v2

    invoke-direct {p0, v0}, Lcom/coderpage/mine/persistence/document/DocumentManager;->joinPathAbsolute([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 260
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "Documents"

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/coderpage/mine/persistence/document/DocumentManager;->joinPathAbsolute([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 266
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    array-length v3, p1

    :cond_2
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    new-instance v1, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$nI0vdMAIdDEoVF7is_eA-J5dHDU;

    invoke-direct {v1, v0}, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$nI0vdMAIdDEoVF7is_eA-J5dHDU;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Lcom/coderpage/base/utils/ArrayUtils;->forEach([Ljava/lang/Object;Lcom/coderpage/base/utils/ArrayUtils$Consumer;)V

    return-object v0

    .line 264
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method private listFileQ(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dirPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "external"

    .line 277
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 279
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v2, v9

    aput-object p1, v2, v8

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {v0, v2}, Lcom/coderpage/mine/persistence/document/DocumentManager;->joinPathRelative([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    .line 280
    iget-object v2, v0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "relative_path = ?"

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    const-string v3, "_id"

    .line 285
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "_display_name"

    .line 286
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "_size"

    .line 287
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "date_added"

    .line 288
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "relative_path"

    .line 289
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 291
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 293
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 294
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 295
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 296
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 297
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 p1, v3

    .line 299
    new-instance v3, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;

    invoke-direct {v3}, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;-><init>()V

    .line 300
    iput-wide v10, v3, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->id:J

    .line 301
    iput-object v8, v3, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->name:Ljava/lang/String;

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    .line 302
    iput-wide v14, v3, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->date:J

    .line 303
    iput-wide v12, v3, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->size:J

    .line 304
    iput-object v0, v3, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->relativePath:Ljava/lang/String;

    .line 305
    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;->uri:Landroid/net/Uri;

    .line 307
    new-instance v0, Lcom/coderpage/mine/persistence/document/DocumentFile;

    invoke-direct {v0, v3}, Lcom/coderpage/mine/persistence/document/DocumentFile;-><init>(Lcom/coderpage/mine/persistence/document/DocumentFile$UriFile;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v3, p1

    goto :goto_0

    .line 309
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v9
.end method

.method private needPermission()Z
    .locals 2

    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 357
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 359
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private saveFileInternal(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "task"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$ThJ9Nciv7Pp95lQZql9ZVAGlUhs;

    invoke-direct {v1, p0, p1, p2}, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$ThJ9Nciv7Pp95lQZql9ZVAGlUhs;-><init>(Lcom/coderpage/mine/persistence/document/DocumentManager;Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveFileInternalBeforeQ(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)Lcom/coderpage/base/common/Result;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/persistence/document/DocumentFileCreate;",
            "Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;",
            ")",
            "Lcom/coderpage/base/common/Result<",
            "Landroid/net/Uri;",
            "Lcom/coderpage/base/common/IError;",
            ">;"
        }
    .end annotation

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x13

    if-lt v0, v4, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 103
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, v3, v0}, Lcom/coderpage/mine/persistence/document/DocumentManager;->joinPath(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 105
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "Documents"

    aput-object v4, v0, v2

    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-direct {p0, v3, v0}, Lcom/coderpage/mine/persistence/document/DocumentManager;->joinPath(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    new-instance p1, Lcom/coderpage/base/common/Result;

    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    const-string v1, "make dir failed"

    invoke-direct {v0, v4, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v5, v0}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p2, v3, v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    return-object p1

    .line 116
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    new-instance p1, Lcom/coderpage/base/common/Result;

    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    const-string v1, "save file parent is not dir"

    invoke-direct {v0, v4, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v5, v0}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p2, v3, v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    return-object p1

    .line 121
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "file current exists deleted failed"

    if-eqz p1, :cond_4

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 124
    new-instance p1, Lcom/coderpage/base/common/Result;

    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    const-string v1, "file is already exists as dir"

    invoke-direct {v0, v4, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v5, v0}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p2, v3, v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    return-object p1

    .line 128
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_4

    .line 130
    new-instance p1, Lcom/coderpage/base/common/Result;

    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    invoke-direct {v0, v4, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v5, v0}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p2, v3, v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    return-object p1

    .line 136
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_5

    .line 138
    new-instance p1, Lcom/coderpage/base/common/Result;

    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    invoke-direct {v0, v4, v1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v5, v0}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p2, v3, v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    return-object p1

    .line 142
    :cond_5
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    new-instance v1, Lcom/coderpage/base/common/Result;

    iget-object v6, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    const-string v7, "com.lightweightledger.app.fileProvider"

    invoke-static {v6, v7, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p2, p1}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onSave(Ljava/io/OutputStream;)V

    .line 145
    invoke-virtual {v1}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coderpage/base/common/IError;

    invoke-virtual {p2, v2, v0, v6}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 142
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 149
    new-instance v0, Lcom/coderpage/base/common/Result;

    new-instance v1, Lcom/coderpage/base/common/NonThrowError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file create failed, "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v4, p1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v5, v1}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v0}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p2, v3, p1, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    return-object v0
.end method

.method private saveFileInternalQ(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)Lcom/coderpage/base/common/Result;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/persistence/document/DocumentFileCreate;",
            "Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;",
            ")",
            "Lcom/coderpage/base/common/Result<",
            "Landroid/net/Uri;",
            "Lcom/coderpage/base/common/IError;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->deleteIfExist(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;)Z

    .line 159
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 160
    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->getMime()Lcom/coderpage/mine/common/Mime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coderpage/mine/common/Mime;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 162
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/coderpage/mine/persistence/document/DocumentFileCreate;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->joinPathRelative([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "relative_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "external"

    .line 166
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 168
    new-instance p1, Lcom/coderpage/base/common/Result;

    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    const-string v2, "create save uri failed"

    invoke-direct {v0, v1, v2}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v4, v0}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coderpage/base/common/IError;

    invoke-virtual {p2, v3, v0, v1}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    return-object p1

    .line 173
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    .line 175
    :try_start_1
    new-instance v0, Lcom/coderpage/base/common/Result;

    new-instance v2, Lcom/coderpage/base/common/NonThrowError;

    const-string v5, "open output stream failed"

    invoke-direct {v2, v1, v5}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v4, v2}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v0}, Lcom/coderpage/base/common/Result;->data()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/coderpage/base/common/Result;->error()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coderpage/base/common/IError;

    invoke-virtual {p2, v3, v2, v5}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 182
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v0

    .line 179
    :cond_2
    :try_start_3
    invoke-virtual {p2, p1}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onSave(Ljava/io/OutputStream;)V

    .line 180
    invoke-virtual {p2, v2, v0, v4}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    .line 181
    new-instance v2, Lcom/coderpage/base/common/Result;

    invoke-direct {v2, v0, v4}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    .line 182
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v2

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 173
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    :cond_4
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 183
    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v3, v4, v0}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    .line 184
    new-instance p2, Lcom/coderpage/base/common/Result;

    new-instance v0, Lcom/coderpage/base/common/NonThrowError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-direct {p2, v4, v0}, Lcom/coderpage/base/common/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method public synthetic lambda$listFile$3$DocumentManager(Ljava/lang/String;Lcom/coderpage/base/common/Callback;)V
    .locals 1

    .line 215
    invoke-virtual {p0, p1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->listFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 216
    new-instance v0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$HEYZPfRIAYj71OO0pu0ETCvKzsc;

    invoke-direct {v0, p2, p1}, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$HEYZPfRIAYj71OO0pu0ETCvKzsc;-><init>(Lcom/coderpage/base/common/Callback;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/coderpage/mine/persistence/document/DocumentManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$listFile$4$DocumentManager(Ljava/lang/Runnable;Lcom/coderpage/base/common/Callback;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 239
    iget-object p2, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 242
    :cond_0
    new-instance p1, Lcom/coderpage/base/common/NonThrowError;

    const/4 p3, -0x1

    const-string p4, "permission denied"

    invoke-direct {p1, p3, p4}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/coderpage/base/common/Callback;->failure(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$saveFile$0$DocumentManager(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFileInternal(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 86
    new-instance p4, Lcom/coderpage/base/common/NonThrowError;

    const/4 p5, -0x1

    const-string v0, "permission denied"

    invoke-direct {p4, p5, v0}, Lcom/coderpage/base/common/NonThrowError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1, p3, p4}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;->onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V

    return-void
.end method

.method public synthetic lambda$saveFileInternal$1$DocumentManager(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V
    .locals 2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFileInternalQ(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)Lcom/coderpage/base/common/Result;

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFileInternalBeforeQ(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)Lcom/coderpage/base/common/Result;

    :goto_0
    return-void
.end method

.method public listFile(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;"
        }
    .end annotation

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->listFileQ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 250
    :cond_0
    invoke-direct {p0, p1}, Lcom/coderpage/mine/persistence/document/DocumentManager;->listFileBeforeQ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public listFile(Ljava/lang/String;Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;Lcom/coderpage/base/common/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "permissionReq",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;",
            "Lcom/coderpage/base/common/Callback<",
            "Ljava/util/List<",
            "Lcom/coderpage/mine/persistence/document/DocumentFile;",
            ">;",
            "Lcom/coderpage/base/common/IError;",
            ">;)V"
        }
    .end annotation

    .line 214
    new-instance v0, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$egzXShMp60K1iKwihjjS0yZQW5k;

    invoke-direct {v0, p0, p1, p3}, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$egzXShMp60K1iKwihjjS0yZQW5k;-><init>(Lcom/coderpage/mine/persistence/document/DocumentManager;Ljava/lang/String;Lcom/coderpage/base/common/Callback;)V

    .line 218
    invoke-direct {p0}, Lcom/coderpage/mine/persistence/document/DocumentManager;->needPermission()Z

    move-result p1

    if-nez p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array v2, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v2, p1

    const/4 p1, 0x1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v2, p1

    .line 227
    iget-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/coderpage/lib/permission/PermissionReq;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    .line 234
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->getTipTitle()Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->getTipMsg()Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->getForceRefuseTipMsg()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$WMDXgyuHLzE8mg93h34fwJGqA8g;

    invoke-direct {v7, p0, v0, p3}, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$WMDXgyuHLzE8mg93h34fwJGqA8g;-><init>(Lcom/coderpage/mine/persistence/document/DocumentManager;Ljava/lang/Runnable;Lcom/coderpage/base/common/Callback;)V

    .line 231
    invoke-static/range {v1 .. v7}, Lcom/coderpage/lib/permission/PermissionReq;->request(Landroid/content/Context;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coderpage/lib/permission/PermissionReq$Listener;)V

    return-void
.end method

.method public saveFile(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "permissionReq",
            "task"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/coderpage/mine/persistence/document/DocumentManager;->needPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0, p1, p3}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFileInternal(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v2, v0

    .line 71
    iget-object v0, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/coderpage/lib/permission/PermissionReq;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-direct {p0, p1, p3}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFileInternal(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V

    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/coderpage/mine/persistence/document/DocumentManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    .line 78
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->getTipTitle()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->getTipMsg()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {p2}, Lcom/coderpage/mine/persistence/document/DocumentPermissionReq;->getForceRefuseTipMsg()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$0e-SMQqxXK8QeuSCCH_Bgk9AQBo;

    invoke-direct {v7, p0, p1, p3}, Lcom/coderpage/mine/persistence/document/-$$Lambda$DocumentManager$0e-SMQqxXK8QeuSCCH_Bgk9AQBo;-><init>(Lcom/coderpage/mine/persistence/document/DocumentManager;Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)V

    .line 75
    invoke-static/range {v1 .. v7}, Lcom/coderpage/lib/permission/PermissionReq;->request(Landroid/content/Context;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coderpage/lib/permission/PermissionReq$Listener;)V

    return-void
.end method

.method public saveFileSyncWithoutPermissionCheck(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)Lcom/coderpage/base/common/Result;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coderpage/mine/persistence/document/DocumentFileCreate;",
            "Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;",
            ")",
            "Lcom/coderpage/base/common/Result<",
            "Landroid/net/Uri;",
            "Lcom/coderpage/base/common/IError;",
            ">;"
        }
    .end annotation

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFileInternalQ(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)Lcom/coderpage/base/common/Result;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coderpage/mine/persistence/document/DocumentManager;->saveFileInternalBeforeQ(Lcom/coderpage/mine/persistence/document/DocumentFileCreate;Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;)Lcom/coderpage/base/common/Result;

    move-result-object p1

    return-object p1
.end method
