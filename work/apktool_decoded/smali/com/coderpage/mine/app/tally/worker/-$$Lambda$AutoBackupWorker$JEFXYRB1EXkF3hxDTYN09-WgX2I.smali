.class public final synthetic Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$JEFXYRB1EXkF3hxDTYN09-WgX2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$JEFXYRB1EXkF3hxDTYN09-WgX2I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$JEFXYRB1EXkF3hxDTYN09-WgX2I;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$JEFXYRB1EXkF3hxDTYN09-WgX2I;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$JEFXYRB1EXkF3hxDTYN09-WgX2I;->INSTANCE:Lcom/coderpage/mine/app/tally/worker/-$$Lambda$AutoBackupWorker$JEFXYRB1EXkF3hxDTYN09-WgX2I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final formatName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/coderpage/mine/app/tally/worker/AutoBackupWorker;->lambda$exportBackupFile$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
