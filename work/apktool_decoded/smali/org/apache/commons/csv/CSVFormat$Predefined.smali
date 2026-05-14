.class public final enum Lorg/apache/commons/csv/CSVFormat$Predefined;
.super Ljava/lang/Enum;
.source "CSVFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/csv/CSVFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Predefined"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/csv/CSVFormat$Predefined;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum Default:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum Excel:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum InformixUnload:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum InformixUnloadCsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum MongoDBCsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum MongoDBTsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum MySQL:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum Oracle:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum PostgreSQLCsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum PostgreSQLText:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum RFC4180:Lorg/apache/commons/csv/CSVFormat$Predefined;

.field public static final enum TDF:Lorg/apache/commons/csv/CSVFormat$Predefined;


# instance fields
.field private final format:Lorg/apache/commons/csv/CSVFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 174
    new-instance v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v1, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    const-string v2, "Default"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->Default:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 179
    new-instance v1, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v2, Lorg/apache/commons/csv/CSVFormat;->EXCEL:Lorg/apache/commons/csv/CSVFormat;

    const-string v4, "Excel"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v1, Lorg/apache/commons/csv/CSVFormat$Predefined;->Excel:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 185
    new-instance v2, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v4, Lorg/apache/commons/csv/CSVFormat;->INFORMIX_UNLOAD:Lorg/apache/commons/csv/CSVFormat;

    const-string v6, "InformixUnload"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v2, Lorg/apache/commons/csv/CSVFormat$Predefined;->InformixUnload:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 191
    new-instance v4, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v6, Lorg/apache/commons/csv/CSVFormat;->INFORMIX_UNLOAD_CSV:Lorg/apache/commons/csv/CSVFormat;

    const-string v8, "InformixUnloadCsv"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v4, Lorg/apache/commons/csv/CSVFormat$Predefined;->InformixUnloadCsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 197
    new-instance v6, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v8, Lorg/apache/commons/csv/CSVFormat;->MONGODB_CSV:Lorg/apache/commons/csv/CSVFormat;

    const-string v10, "MongoDBCsv"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v6, Lorg/apache/commons/csv/CSVFormat$Predefined;->MongoDBCsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 203
    new-instance v8, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v10, Lorg/apache/commons/csv/CSVFormat;->MONGODB_TSV:Lorg/apache/commons/csv/CSVFormat;

    const-string v12, "MongoDBTsv"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v8, Lorg/apache/commons/csv/CSVFormat$Predefined;->MongoDBTsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 208
    new-instance v10, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v12, Lorg/apache/commons/csv/CSVFormat;->MYSQL:Lorg/apache/commons/csv/CSVFormat;

    const-string v14, "MySQL"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v10, Lorg/apache/commons/csv/CSVFormat$Predefined;->MySQL:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 213
    new-instance v12, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v14, Lorg/apache/commons/csv/CSVFormat;->ORACLE:Lorg/apache/commons/csv/CSVFormat;

    const-string v15, "Oracle"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v12, Lorg/apache/commons/csv/CSVFormat$Predefined;->Oracle:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 219
    new-instance v14, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v15, Lorg/apache/commons/csv/CSVFormat;->POSTGRESQL_CSV:Lorg/apache/commons/csv/CSVFormat;

    const-string v13, "PostgreSQLCsv"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v14, Lorg/apache/commons/csv/CSVFormat$Predefined;->PostgreSQLCsv:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 224
    new-instance v13, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v15, Lorg/apache/commons/csv/CSVFormat;->POSTGRESQL_TEXT:Lorg/apache/commons/csv/CSVFormat;

    const-string v11, "PostgreSQLText"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v13, Lorg/apache/commons/csv/CSVFormat$Predefined;->PostgreSQLText:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 229
    new-instance v11, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v15, Lorg/apache/commons/csv/CSVFormat;->RFC4180:Lorg/apache/commons/csv/CSVFormat;

    const-string v9, "RFC4180"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v11, Lorg/apache/commons/csv/CSVFormat$Predefined;->RFC4180:Lorg/apache/commons/csv/CSVFormat$Predefined;

    .line 234
    new-instance v9, Lorg/apache/commons/csv/CSVFormat$Predefined;

    sget-object v15, Lorg/apache/commons/csv/CSVFormat;->TDF:Lorg/apache/commons/csv/CSVFormat;

    const-string v7, "TDF"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lorg/apache/commons/csv/CSVFormat$Predefined;-><init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V

    sput-object v9, Lorg/apache/commons/csv/CSVFormat$Predefined;->TDF:Lorg/apache/commons/csv/CSVFormat$Predefined;

    const/16 v7, 0xc

    new-array v7, v7, [Lorg/apache/commons/csv/CSVFormat$Predefined;

    aput-object v0, v7, v3

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    aput-object v9, v7, v5

    .line 169
    sput-object v7, Lorg/apache/commons/csv/CSVFormat$Predefined;->$VALUES:[Lorg/apache/commons/csv/CSVFormat$Predefined;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/commons/csv/CSVFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/csv/CSVFormat;",
            ")V"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput-object p3, p0, Lorg/apache/commons/csv/CSVFormat$Predefined;->format:Lorg/apache/commons/csv/CSVFormat;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat$Predefined;
    .locals 1

    .line 169
    const-class v0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/csv/CSVFormat$Predefined;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/csv/CSVFormat$Predefined;
    .locals 1

    .line 169
    sget-object v0, Lorg/apache/commons/csv/CSVFormat$Predefined;->$VALUES:[Lorg/apache/commons/csv/CSVFormat$Predefined;

    invoke-virtual {v0}, [Lorg/apache/commons/csv/CSVFormat$Predefined;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/csv/CSVFormat$Predefined;

    return-object v0
.end method


# virtual methods
.method public getFormat()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat$Predefined;->format:Lorg/apache/commons/csv/CSVFormat;

    return-object v0
.end method
