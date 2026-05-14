.class public Lcom/coderpage/mine/utils/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGroupBy:Ljava/lang/String;

.field private mHaving:Ljava/lang/String;

.field private mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelection:Ljava/lang/StringBuilder;

.field private mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/coderpage/mine/utils/SelectionBuilder;

    invoke-static {v0}, Lcom/coderpage/base/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coderpage/mine/utils/SelectionBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mGroupBy:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mHaving:Ljava/lang/String;

    return-void
.end method

.method private assertTable()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Table not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private mapColumns([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columns"
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 164
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "db"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->assertTable()V

    .line 210
    sget-object v0, Lcom/coderpage/mine/utils/SelectionBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/LogUtils;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lcom/coderpage/mine/utils/SelectionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupBy"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mGroupBy:Ljava/lang/String;

    return-object p0
.end method

.method public having(Ljava/lang/String;)Lcom/coderpage/mine/utils/SelectionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "having"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mHaving:Ljava/lang/String;

    return-object p0
.end method

.method public map(Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/utils/SelectionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromColumn",
            "toClause"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AS "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public mapToTable(Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/utils/SelectionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "column",
            "table"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Z[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "distinct",
            "columns",
            "orderBy",
            "limit"
        }
    .end annotation

    move-object v0, p0

    move-object v4, p3

    .line 188
    invoke-direct {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->assertTable()V

    if-eqz v4, :cond_0

    .line 189
    invoke-direct {p0, p3}, Lcom/coderpage/mine/utils/SelectionBuilder;->mapColumns([Ljava/lang/String;)V

    .line 190
    :cond_0
    sget-object v1, Lcom/coderpage/mine/utils/SelectionBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query(columns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", distinct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coderpage/base/utils/LogUtils;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v5, v0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/coderpage/mine/utils/SelectionBuilder;->mGroupBy:Ljava/lang/String;

    iget-object v9, v0, Lcom/coderpage/mine/utils/SelectionBuilder;->mHaving:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move-object v3, v5

    move-object v4, p3

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "db",
            "columns",
            "orderBy"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 180
    invoke-virtual/range {v0 .. v5}, Lcom/coderpage/mine/utils/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Z[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public reset()Lcom/coderpage/mine/utils/SelectionBuilder;
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mGroupBy:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mHaving:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public table(Ljava/lang/String;)Lcom/coderpage/mine/utils/SelectionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "table"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    return-object p0
.end method

.method public varargs table(Ljava/lang/String;[Ljava/lang/String;)Lcom/coderpage/mine/utils/SelectionBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "table",
            "tableParams"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 112
    array-length v0, p2

    if-lez v0, :cond_1

    .line 113
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "[?]"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x22

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    aget-object v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    goto :goto_1

    .line 121
    :cond_1
    iput-object p1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectionBuilder[table="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectionArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "projectionMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "db",
            "values"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->assertTable()V

    .line 201
    sget-object v0, Lcom/coderpage/mine/utils/SelectionBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coderpage/base/utils/LogUtils;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coderpage/mine/utils/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/String;)Lcom/coderpage/mine/utils/SelectionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selection",
            "selectionArgs"
        }
    .end annotation

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 72
    array-length p1, p2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Valid selection required when including arguments="

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    .line 87
    iget-object p1, p0, Lcom/coderpage/mine/utils/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method
