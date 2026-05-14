.class public final synthetic Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$GB3Q6AEpj9PD6Ae9-iHFmpyZgUo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$GB3Q6AEpj9PD6Ae9-iHFmpyZgUo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$GB3Q6AEpj9PD6Ae9-iHFmpyZgUo;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$GB3Q6AEpj9PD6Ae9-iHFmpyZgUo;-><init>()V

    sput-object v0, Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$GB3Q6AEpj9PD6Ae9-iHFmpyZgUo;->INSTANCE:Lcom/coderpage/mine/app/tally/module/backup/-$$Lambda$BackupFileSelectDialog$GB3Q6AEpj9PD6Ae9-iHFmpyZgUo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    check-cast p2, Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;

    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/module/backup/BackupFileSelectDialog;->lambda$initView$3(Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;Lcom/coderpage/mine/app/tally/module/backup/BackupFileItem;)I

    move-result p1

    return p1
.end method
