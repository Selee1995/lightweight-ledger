.class public abstract Lcom/coderpage/mine/persistence/database/MineDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "MineDatabase.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "sql_mine"

.field private static final VERSION_0_6_0:I = 0x3c

.field private static sInstance:Lcom/coderpage/mine/persistence/database/MineDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coderpage/mine/persistence/database/MineDatabase;
    .locals 4

    .line 35
    sget-object v0, Lcom/coderpage/mine/persistence/database/MineDatabase;->sInstance:Lcom/coderpage/mine/persistence/database/MineDatabase;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/coderpage/mine/persistence/database/MineDatabase;->sInstance:Lcom/coderpage/mine/persistence/database/MineDatabase;

    if-nez v1, :cond_0

    .line 39
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v1

    const-class v2, Lcom/coderpage/mine/persistence/database/MineDatabase;

    const-string v3, "sql_mine"

    .line 38
    invoke-static {v1, v2, v3}, Landroid/arch/persistence/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->build()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/coderpage/mine/persistence/database/MineDatabase;

    sput-object v1, Lcom/coderpage/mine/persistence/database/MineDatabase;->sInstance:Lcom/coderpage/mine/persistence/database/MineDatabase;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/coderpage/mine/persistence/database/MineDatabase;->sInstance:Lcom/coderpage/mine/persistence/database/MineDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract keyValueDao()Lcom/coderpage/mine/persistence/dao/KeyValueDao;
.end method
