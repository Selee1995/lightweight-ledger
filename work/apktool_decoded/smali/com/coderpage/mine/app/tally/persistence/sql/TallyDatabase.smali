.class public abstract Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "TallyDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "sql_tally"

.field private static final MIGRATION_010_040:Landroid/arch/persistence/room/migration/Migration;

.field private static final MIGRATION_040_060:Landroid/arch/persistence/room/migration/Migration;

.field private static final VERSION_0_1_0:I = 0x1

.field private static final VERSION_0_4_0:I = 0x28

.field private static final VERSION_0_6_0:I = 0x3c

.field private static mTallDatabaseCallback:Landroid/arch/persistence/room/RoomDatabase$Callback;

.field private static sInstance:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$1;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$1;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->mTallDatabaseCallback:Landroid/arch/persistence/room/RoomDatabase$Callback;

    .line 131
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$2;

    const/4 v1, 0x1

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$2;-><init>(II)V

    sput-object v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->MIGRATION_010_040:Landroid/arch/persistence/room/migration/Migration;

    .line 189
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$3;

    const/16 v1, 0x3c

    invoke-direct {v0, v2, v1}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$3;-><init>(II)V

    sput-object v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->MIGRATION_040_060:Landroid/arch/persistence/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->expenseCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->incomeCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    move-result-object p0

    return-object p0
.end method

.method private static expenseCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uniqueName",
            "name",
            "icon"
        }
    .end annotation

    .line 280
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 281
    invoke-static {v0, p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$502(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;I)I

    return-object v0
.end method

.method public static getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;
    .locals 5

    .line 60
    const-class v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    sget-object v1, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->sInstance:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    if-nez v1, :cond_1

    .line 61
    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->sInstance:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const-string v2, "sql_tally"

    .line 63
    invoke-static {v1, v0, v2}, Landroid/arch/persistence/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/arch/persistence/room/migration/Migration;

    const/4 v3, 0x0

    sget-object v4, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->MIGRATION_010_040:Landroid/arch/persistence/room/migration/Migration;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->MIGRATION_040_060:Landroid/arch/persistence/room/migration/Migration;

    aput-object v4, v2, v3

    .line 66
    invoke-virtual {v1, v2}, Landroid/arch/persistence/room/RoomDatabase$Builder;->addMigrations([Landroid/arch/persistence/room/migration/Migration;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v1

    sget-object v2, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->mTallDatabaseCallback:Landroid/arch/persistence/room/RoomDatabase$Callback;

    .line 67
    invoke-virtual {v1, v2}, Landroid/arch/persistence/room/RoomDatabase$Builder;->addCallback(Landroid/arch/persistence/room/RoomDatabase$Callback;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->build()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    sput-object v1, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->sInstance:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->sInstance:Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    return-object v0
.end method

.method private static incomeCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uniqueName",
            "name",
            "icon"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 287
    invoke-static {v0, p0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;->access$502(Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase$CategoryItem;I)I

    return-object v0
.end method


# virtual methods
.method public abstract categoryDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/CategoryDao;
.end method

.method public abstract recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;
.end method
