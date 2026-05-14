.class public final enum Landroid/arch/persistence/room/RoomDatabase$JournalMode;
.super Ljava/lang/Enum;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JournalMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/arch/persistence/room/RoomDatabase$JournalMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/arch/persistence/room/RoomDatabase$JournalMode;

.field public static final enum AUTOMATIC:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

.field public static final enum TRUNCATE:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

.field public static final enum WRITE_AHEAD_LOGGING:Landroid/arch/persistence/room/RoomDatabase$JournalMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 364
    new-instance v0, Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/arch/persistence/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    .line 369
    new-instance v1, Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    const-string v3, "TRUNCATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/arch/persistence/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->TRUNCATE:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    .line 374
    new-instance v3, Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    const-string v5, "WRITE_AHEAD_LOGGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/arch/persistence/room/RoomDatabase$JournalMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 355
    sput-object v5, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->$VALUES:[Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$JournalMode;
    .locals 1

    .line 355
    const-class v0, Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    return-object p0
.end method

.method public static values()[Landroid/arch/persistence/room/RoomDatabase$JournalMode;
    .locals 1

    .line 355
    sget-object v0, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->$VALUES:[Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    invoke-virtual {v0}, [Landroid/arch/persistence/room/RoomDatabase$JournalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    return-object v0
.end method


# virtual methods
.method resolve(Landroid/content/Context;)Landroid/arch/persistence/room/RoomDatabase$JournalMode;
    .locals 2

    .line 383
    sget-object v0, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    if-eq p0, v0, :cond_0

    return-object p0

    .line 386
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const-string v0, "activity"

    .line 388
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    .line 389
    invoke-static {p1}, Landroid/support/v4/app/ActivityManagerCompat;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 390
    sget-object p1, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    return-object p1

    .line 393
    :cond_1
    sget-object p1, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->TRUNCATE:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    return-object p1
.end method
