# Sistema de respaldo automático de logs
Cada noche debe ejecutarse un script que:

1. Busque todos los archivos .log
2. Comprima únicamente los antiguos
3. Los mueva a una carpeta de respaldo
4. Elimine respaldos muy viejos
5. Genere un reporte

Todo debe hacerse automáticamente.

```
│
├── logs/
│   ├── app.log
│   ├── server.log
│   ├── db.log
│   ├── old1.log
│   ├── old2.log
│   └── ...
│
├── backups/
│
└── backup_logs.sh
```

- Unicamente los archivos *.log que tengan mas de 7 dias